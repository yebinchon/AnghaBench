
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_cdev_receive_phy_packets {int closure; } ;
union ioctl_arg {struct fw_cdev_receive_phy_packets receive_phy_packets; } ;
struct fw_card {int lock; int phy_receiver_list; } ;
struct client {int phy_receiver_closure; int phy_receiver_link; TYPE_1__* device; } ;
struct TYPE_2__ {int is_local; struct fw_card* card; } ;


 int ENOSYS ;
 int list_move_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int ioctl_receive_phy_packets(struct client *client, union ioctl_arg *arg)
{
 struct fw_cdev_receive_phy_packets *a = &arg->receive_phy_packets;
 struct fw_card *card = client->device->card;


 if (!client->device->is_local)
  return -ENOSYS;

 spin_lock_irq(&card->lock);

 list_move_tail(&client->phy_receiver_link, &card->phy_receiver_list);
 client->phy_receiver_closure = a->closure;

 spin_unlock_irq(&card->lock);

 return 0;
}
