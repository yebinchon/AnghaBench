
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct wm97xx {int* dig; int* gpio; int misc; TYPE_3__* ac97; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* write ) (TYPE_3__*,int,int) ;} ;


 int AC97_GPIO_CFG ;
 int AC97_MISC_AFE ;
 int AC97_WM9713_DIG1 ;
 int AC97_WM9713_DIG3 ;
 int stub1 (TYPE_3__*,int,int) ;

void wm97xx_reg_write(struct wm97xx *wm, u16 reg, u16 val)
{

 if (reg >= AC97_WM9713_DIG1 && reg <= AC97_WM9713_DIG3)
  wm->dig[(reg - AC97_WM9713_DIG1) >> 1] = val;


 if (reg >= AC97_GPIO_CFG && reg <= AC97_MISC_AFE)
  wm->gpio[(reg - AC97_GPIO_CFG) >> 1] = val;


 if (reg == 0x5a)
  wm->misc = val;

 if (wm->ac97)
  wm->ac97->bus->ops->write(wm->ac97, reg, val);
}
