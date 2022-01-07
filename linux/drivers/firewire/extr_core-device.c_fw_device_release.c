
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_device {struct fw_device* config_rom; TYPE_1__* node; struct fw_card* card; } ;
struct fw_card {int lock; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int * data; } ;


 int fw_card_put (struct fw_card*) ;
 struct fw_device* fw_device (struct device*) ;
 int fw_node_put (TYPE_1__*) ;
 int kfree (struct fw_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fw_device_release(struct device *dev)
{
 struct fw_device *device = fw_device(dev);
 struct fw_card *card = device->card;
 unsigned long flags;






 spin_lock_irqsave(&card->lock, flags);
 device->node->data = ((void*)0);
 spin_unlock_irqrestore(&card->lock, flags);

 fw_node_put(device->node);
 kfree(device->config_rom);
 kfree(device);
 fw_card_put(card);
}
