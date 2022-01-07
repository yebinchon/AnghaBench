
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ishtp_device {int recvd_hw_ready; int wait_hw_ready; int resume_wait; int resume_flag; int suspend_wait; int suspend_flag; } ;


 int INIT_WORK (int *,int ) ;
 int IPC_HEADER_GET_MNG_CMD (int) ;



 int fw_reset_work ;
 int fw_reset_work_fn ;
 struct ishtp_device* ishtp_dev ;
 int schedule_work (int *) ;
 int wake_up_interruptible (int *) ;
 int write_ipc_from_queue (struct ishtp_device*) ;

__attribute__((used)) static void recv_ipc(struct ishtp_device *dev, uint32_t doorbell_val)
{
 uint32_t mng_cmd;

 mng_cmd = IPC_HEADER_GET_MNG_CMD(doorbell_val);

 switch (mng_cmd) {
 default:
  break;

 case 128:
  if (dev->suspend_flag) {
   dev->suspend_flag = 0;
   wake_up_interruptible(&dev->suspend_wait);
  }
  if (dev->resume_flag) {
   dev->resume_flag = 0;
   wake_up_interruptible(&dev->resume_wait);
  }

  write_ipc_from_queue(dev);
  break;

 case 130:
  if (!ishtp_dev) {
   ishtp_dev = dev;
   INIT_WORK(&fw_reset_work, fw_reset_work_fn);
  }
  schedule_work(&fw_reset_work);
  break;

 case 129:
  dev->recvd_hw_ready = 1;
  wake_up_interruptible(&dev->wait_hw_ready);
  break;
 }
}
