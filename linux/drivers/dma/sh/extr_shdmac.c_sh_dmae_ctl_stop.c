
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_dmae_device {int dummy; } ;


 unsigned short DMAOR_AE ;
 unsigned short DMAOR_DME ;
 unsigned short DMAOR_NMIF ;
 unsigned short dmaor_read (struct sh_dmae_device*) ;
 int dmaor_write (struct sh_dmae_device*,unsigned short) ;
 int sh_dmae_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sh_dmae_ctl_stop(struct sh_dmae_device *shdev)
{
 unsigned short dmaor;
 unsigned long flags;

 spin_lock_irqsave(&sh_dmae_lock, flags);

 dmaor = dmaor_read(shdev);
 dmaor_write(shdev, dmaor & ~(DMAOR_NMIF | DMAOR_AE | DMAOR_DME));

 spin_unlock_irqrestore(&sh_dmae_lock, flags);
}
