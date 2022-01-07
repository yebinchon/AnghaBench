
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_test_device {void* message; scalar_t__ tx_mmio; scalar_t__ signal; } ;
struct mbox_client {int dev; } ;


 int MBOX_MAX_MSG_LEN ;
 struct mbox_test_device* dev_get_drvdata (int ) ;
 int memcpy_toio (scalar_t__,void*,int ) ;

__attribute__((used)) static void mbox_test_prepare_message(struct mbox_client *client, void *message)
{
 struct mbox_test_device *tdev = dev_get_drvdata(client->dev);

 if (tdev->tx_mmio) {
  if (tdev->signal)
   memcpy_toio(tdev->tx_mmio, tdev->message, MBOX_MAX_MSG_LEN);
  else
   memcpy_toio(tdev->tx_mmio, message, MBOX_MAX_MSG_LEN);
 }
}
