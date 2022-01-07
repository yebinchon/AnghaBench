
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int dig; int dig_save; } ;


 int AC97_WM97XX_DIGITISER1 ;
 int AC97_WM97XX_DIGITISER2 ;
 int WM97XX_PRP_DET_DIG ;
 int memcpy (int ,int ,int) ;
 int wm97xx_reg_write (struct wm97xx*,int ,int ) ;

__attribute__((used)) static void wm9705_aux_prepare(struct wm97xx *wm)
{
 memcpy(wm->dig_save, wm->dig, sizeof(wm->dig));
 wm97xx_reg_write(wm, AC97_WM97XX_DIGITISER1, 0);
 wm97xx_reg_write(wm, AC97_WM97XX_DIGITISER2, WM97XX_PRP_DET_DIG);
}
