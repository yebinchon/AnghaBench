
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int * dig_save; } ;


 int AC97_WM97XX_DIGITISER1 ;
 int AC97_WM97XX_DIGITISER2 ;
 int wm97xx_reg_write (struct wm97xx*,int ,int ) ;

__attribute__((used)) static void wm9705_dig_restore(struct wm97xx *wm)
{
 wm97xx_reg_write(wm, AC97_WM97XX_DIGITISER1, wm->dig_save[1]);
 wm97xx_reg_write(wm, AC97_WM97XX_DIGITISER2, wm->dig_save[2]);
}
