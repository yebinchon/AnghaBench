
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wm97xx {scalar_t__ id; TYPE_1__* mach_ops; scalar_t__ pen_irq; int dev; } ;
struct TYPE_2__ {int irq_gpio; int irq_enable; } ;


 int AC97_MISC_AFE ;
 int BUG_ON (int) ;
 int EINVAL ;
 int IRQF_SHARED ;
 scalar_t__ WM9705_ID2 ;
 int dev_err (int ,char*) ;
 scalar_t__ request_irq (scalar_t__,int ,int ,char*,struct wm97xx*) ;
 int wm97xx_pen_interrupt ;
 int wm97xx_reg_read (struct wm97xx*,int) ;
 int wm97xx_reg_write (struct wm97xx*,int,int) ;

__attribute__((used)) static int wm97xx_init_pen_irq(struct wm97xx *wm)
{
 u16 reg;



 BUG_ON(!wm->mach_ops->irq_enable);

 if (request_irq(wm->pen_irq, wm97xx_pen_interrupt, IRQF_SHARED,
   "wm97xx-pen", wm)) {
  dev_err(wm->dev,
   "Failed to register pen down interrupt, polling");
  wm->pen_irq = 0;
  return -EINVAL;
 }


 if (wm->id != WM9705_ID2) {
  BUG_ON(!wm->mach_ops->irq_gpio);
  reg = wm97xx_reg_read(wm, AC97_MISC_AFE);
  wm97xx_reg_write(wm, AC97_MISC_AFE,
    reg & ~(wm->mach_ops->irq_gpio));
  reg = wm97xx_reg_read(wm, 0x5a);
  wm97xx_reg_write(wm, 0x5a, reg & ~0x0001);
 }

 return 0;
}
