
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_dmac_desc {int node; } ;
struct TYPE_2__ {int lock; } ;
struct usb_dmac_chan {TYPE_1__ vc; int desc_freed; } ;


 int list_move_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void usb_dmac_desc_put(struct usb_dmac_chan *chan,
         struct usb_dmac_desc *desc)
{
 unsigned long flags;

 spin_lock_irqsave(&chan->vc.lock, flags);
 list_move_tail(&desc->node, &chan->desc_freed);
 spin_unlock_irqrestore(&chan->vc.lock, flags);
}
