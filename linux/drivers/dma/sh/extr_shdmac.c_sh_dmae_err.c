
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_dmae_device {int dummy; } ;
typedef int irqreturn_t ;


 int DMAOR_AE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dmaor_read (struct sh_dmae_device*) ;
 int sh_dmae_reset (struct sh_dmae_device*) ;

__attribute__((used)) static irqreturn_t sh_dmae_err(int irq, void *data)
{
 struct sh_dmae_device *shdev = data;

 if (!(dmaor_read(shdev) & DMAOR_AE))
  return IRQ_NONE;

 sh_dmae_reset(shdev);
 return IRQ_HANDLED;
}
