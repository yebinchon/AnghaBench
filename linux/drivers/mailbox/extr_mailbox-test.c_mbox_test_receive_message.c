
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_test_device {void* rx_buffer; int async_queue; int waitq; int lock; scalar_t__ rx_mmio; } ;
struct mbox_client {int dev; } ;


 int DUMP_PREFIX_ADDRESS ;
 int MBOX_MAX_MSG_LEN ;
 int POLL_IN ;
 int SIGIO ;
 struct mbox_test_device* dev_get_drvdata (int ) ;
 int kill_fasync (int *,int ,int ) ;
 int mbox_data_ready ;
 int memcpy (void*,void*,int ) ;
 int memcpy_fromio (void*,scalar_t__,int ) ;
 int print_hex_dump_bytes (char*,int ,void*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void mbox_test_receive_message(struct mbox_client *client, void *message)
{
 struct mbox_test_device *tdev = dev_get_drvdata(client->dev);
 unsigned long flags;

 spin_lock_irqsave(&tdev->lock, flags);
 if (tdev->rx_mmio) {
  memcpy_fromio(tdev->rx_buffer, tdev->rx_mmio, MBOX_MAX_MSG_LEN);
  print_hex_dump_bytes("Client: Received [MMIO]: ", DUMP_PREFIX_ADDRESS,
         tdev->rx_buffer, MBOX_MAX_MSG_LEN);
 } else if (message) {
  print_hex_dump_bytes("Client: Received [API]: ", DUMP_PREFIX_ADDRESS,
         message, MBOX_MAX_MSG_LEN);
  memcpy(tdev->rx_buffer, message, MBOX_MAX_MSG_LEN);
 }
 mbox_data_ready = 1;
 spin_unlock_irqrestore(&tdev->lock, flags);

 wake_up_interruptible(&tdev->waitq);

 kill_fasync(&tdev->async_queue, SIGIO, POLL_IN);
}
