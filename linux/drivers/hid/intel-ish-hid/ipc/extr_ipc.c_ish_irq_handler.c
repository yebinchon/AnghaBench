
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ishtp_device {scalar_t__ dev_state; int ipc_rx_bytes_cnt; int ipc_rx_cnt; int devc; } ;
typedef int irqreturn_t ;


 scalar_t__ IPC_HEADER_GET_LENGTH (int ) ;
 int IPC_HEADER_GET_PROTOCOL (int ) ;
 int IPC_IS_BUSY (int ) ;
 scalar_t__ IPC_PAYLOAD_SIZE ;


 int IPC_REG_ISH2HOST_DRBL ;
 int IPC_REG_ISH_HOST_FWSTS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ ISHTP_DEV_DISABLED ;
 int check_generated_interrupt (struct ishtp_device*) ;
 int dev_err (int ,char*,unsigned int) ;
 int ish_reg_read (struct ishtp_device*,int ) ;
 int ish_reg_write (struct ishtp_device*,int ,int ) ;
 int ishtp_recv (struct ishtp_device*) ;
 int recv_ipc (struct ishtp_device*,int ) ;

irqreturn_t ish_irq_handler(int irq, void *dev_id)
{
 struct ishtp_device *dev = dev_id;
 uint32_t doorbell_val;
 bool interrupt_generated;


 interrupt_generated = check_generated_interrupt(dev);

 if (!interrupt_generated)
  return IRQ_NONE;

 doorbell_val = ish_reg_read(dev, IPC_REG_ISH2HOST_DRBL);
 if (!IPC_IS_BUSY(doorbell_val))
  return IRQ_HANDLED;

 if (dev->dev_state == ISHTP_DEV_DISABLED)
  return IRQ_HANDLED;


 if (IPC_HEADER_GET_LENGTH(doorbell_val) > IPC_PAYLOAD_SIZE) {
  dev_err(dev->devc,
   "IPC hdr - bad length: %u; dropped\n",
   (unsigned int)IPC_HEADER_GET_LENGTH(doorbell_val));
  goto eoi;
 }

 switch (IPC_HEADER_GET_PROTOCOL(doorbell_val)) {
 default:
  break;
 case 128:
  recv_ipc(dev, doorbell_val);
  break;
 case 129:
  ishtp_recv(dev);
  break;
 }

eoi:

 ++dev->ipc_rx_cnt;
 dev->ipc_rx_bytes_cnt += IPC_HEADER_GET_LENGTH(doorbell_val);

 ish_reg_write(dev, IPC_REG_ISH2HOST_DRBL, 0);

 ish_reg_read(dev, IPC_REG_ISH_HOST_FWSTS);

 return IRQ_HANDLED;
}
