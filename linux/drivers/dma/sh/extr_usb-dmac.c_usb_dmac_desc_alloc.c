
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_dmac_desc {unsigned int sg_allocated_len; int node; } ;
struct TYPE_2__ {int lock; } ;
struct usb_dmac_chan {TYPE_1__ vc; int desc_freed; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 struct usb_dmac_desc* kzalloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int sg ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int struct_size (struct usb_dmac_desc*,int ,unsigned int) ;

__attribute__((used)) static int usb_dmac_desc_alloc(struct usb_dmac_chan *chan, unsigned int sg_len,
          gfp_t gfp)
{
 struct usb_dmac_desc *desc;
 unsigned long flags;

 desc = kzalloc(struct_size(desc, sg, sg_len), gfp);
 if (!desc)
  return -ENOMEM;

 desc->sg_allocated_len = sg_len;
 INIT_LIST_HEAD(&desc->node);

 spin_lock_irqsave(&chan->vc.lock, flags);
 list_add_tail(&desc->node, &chan->desc_freed);
 spin_unlock_irqrestore(&chan->vc.lock, flags);

 return 0;
}
