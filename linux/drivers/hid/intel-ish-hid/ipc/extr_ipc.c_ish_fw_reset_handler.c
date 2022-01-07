
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ishtp_device {int devc; int wr_processing_spinlock; int wr_free_list; int wr_processing_list; } ;


 int ENODEV ;
 int EPIPE ;
 int IPC_REG_ISH2HOST_MSG ;
 int MNG_RESET_NOTIFY_ACK ;
 int TIMEOUT_FOR_FW_RDY_MS ;
 int TIMEOUT_FOR_INPUT_RDY_MS ;
 int TIME_SLICE_FOR_FW_RDY_MS ;
 int TIME_SLICE_FOR_INPUT_RDY_MS ;
 int WAIT_FOR_FW_RDY ;
 int WAIT_FOR_INPUT_RDY ;
 int _ish_read_fw_sts_reg (struct ishtp_device*) ;
 int dev_err (int ,char*,int) ;
 int ipc_send_mng_msg (struct ishtp_device*,int ,int*,int) ;
 int ish_is_input_ready (struct ishtp_device*) ;
 int ish_reg_read (struct ishtp_device*,int ) ;
 int ish_set_host_rdy (struct ishtp_device*) ;
 int ishtp_fw_is_ready (struct ishtp_device*) ;
 int ishtp_reset_handler (struct ishtp_device*) ;
 int list_splice_init (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timed_wait_for_timeout (struct ishtp_device*,int ,int ,int ) ;

__attribute__((used)) static int ish_fw_reset_handler(struct ishtp_device *dev)
{
 uint32_t reset_id;
 unsigned long flags;


 reset_id = ish_reg_read(dev, IPC_REG_ISH2HOST_MSG) & 0xFFFF;


 spin_lock_irqsave(&dev->wr_processing_spinlock, flags);
 list_splice_init(&dev->wr_processing_list, &dev->wr_free_list);
 spin_unlock_irqrestore(&dev->wr_processing_spinlock, flags);


 ishtp_reset_handler(dev);

 if (!ish_is_input_ready(dev))
  timed_wait_for_timeout(dev, WAIT_FOR_INPUT_RDY,
   TIME_SLICE_FOR_INPUT_RDY_MS, TIMEOUT_FOR_INPUT_RDY_MS);


 if (!ish_is_input_ready(dev))
  return -EPIPE;




 ish_set_host_rdy(dev);

 ipc_send_mng_msg(dev, MNG_RESET_NOTIFY_ACK, &reset_id,
    sizeof(uint32_t));


 timed_wait_for_timeout(dev, WAIT_FOR_FW_RDY,
   TIME_SLICE_FOR_FW_RDY_MS, TIMEOUT_FOR_FW_RDY_MS);
 if (!ishtp_fw_is_ready(dev)) {

  uint32_t ish_status;

  ish_status = _ish_read_fw_sts_reg(dev);
  dev_err(dev->devc,
   "[ishtp-ish]: completed reset, ISH is dead (FWSTS = %08X)\n",
   ish_status);
  return -ENODEV;
 }
 return 0;
}
