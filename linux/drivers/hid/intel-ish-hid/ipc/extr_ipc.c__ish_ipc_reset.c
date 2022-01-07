
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_device {int devc; scalar_t__ recvd_hw_ready; int wait_hw_ready; } ;
struct ipc_rst_payload_type {int reset_id; scalar_t__ reserved; } ;


 int ENODEV ;
 int HZ ;
 int IPC_REG_ISH2HOST_DRBL ;
 int IPC_REG_ISH_HOST_FWSTS ;
 int MNG_RESET_NOTIFY ;
 int dev_err (int ,char*) ;
 int ipc_send_mng_msg (struct ishtp_device*,int ,struct ipc_rst_payload_type*,int) ;
 int ish_reg_read (struct ishtp_device*,int ) ;
 int ish_reg_write (struct ishtp_device*,int ,int ) ;
 int set_host_ready (struct ishtp_device*) ;
 int wait_event_interruptible_timeout (int ,scalar_t__,int) ;

__attribute__((used)) static int _ish_ipc_reset(struct ishtp_device *dev)
{
 struct ipc_rst_payload_type ipc_mng_msg;
 int rv = 0;

 ipc_mng_msg.reset_id = 1;
 ipc_mng_msg.reserved = 0;

 set_host_ready(dev);


 ish_reg_write(dev, IPC_REG_ISH2HOST_DRBL, 0);

 ish_reg_read(dev, IPC_REG_ISH_HOST_FWSTS);

 dev->recvd_hw_ready = 0;


 rv = ipc_send_mng_msg(dev, MNG_RESET_NOTIFY, &ipc_mng_msg,
  sizeof(struct ipc_rst_payload_type));
 if (rv) {
  dev_err(dev->devc, "Failed to send IPC MNG_RESET_NOTIFY\n");
  return rv;
 }

 wait_event_interruptible_timeout(dev->wait_hw_ready,
      dev->recvd_hw_ready, 2 * HZ);
 if (!dev->recvd_hw_ready) {
  dev_err(dev->devc, "Timed out waiting for HW ready\n");
  rv = -ENODEV;
 }

 return rv;
}
