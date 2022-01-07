
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int pen_irq; } ;


 int disable_irq_nosync (int ) ;
 int enable_irq (int ) ;

__attribute__((used)) static void wm97xx_irq_enable(struct wm97xx *wm, int enable)
{
 if (enable)
  enable_irq(wm->pen_irq);
 else
  disable_irq_nosync(wm->pen_irq);
}
