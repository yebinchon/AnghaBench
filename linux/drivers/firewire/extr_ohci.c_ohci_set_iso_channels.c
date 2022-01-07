
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fw_ohci {int ir_context_channels; int mc_channels; int lock; } ;
struct fw_iso_context {int type; int card; } ;


 int EBUSY ;
 int EINVAL ;

 struct fw_ohci* fw_ohci (int ) ;
 int set_multichannel_mask (struct fw_ohci*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ohci_set_iso_channels(struct fw_iso_context *base, u64 *channels)
{
 struct fw_ohci *ohci = fw_ohci(base->card);
 unsigned long flags;
 int ret;

 switch (base->type) {
 case 128:

  spin_lock_irqsave(&ohci->lock, flags);


  if (~ohci->ir_context_channels & ~ohci->mc_channels & *channels) {
   *channels = ohci->ir_context_channels;
   ret = -EBUSY;
  } else {
   set_multichannel_mask(ohci, *channels);
   ret = 0;
  }

  spin_unlock_irqrestore(&ohci->lock, flags);

  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
