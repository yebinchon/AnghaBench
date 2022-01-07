
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int* dig; } ;


 int AC97_WM97XX_DIGITISER2 ;
 int AC97_WM97XX_DIGITISER_RD ;
 int WM97XX_PRP_DET_DIG ;
 int wm97xx_reg_read (struct wm97xx*,int ) ;
 int wm97xx_reg_write (struct wm97xx*,int ,int) ;

__attribute__((used)) static void wm9705_dig_enable(struct wm97xx *wm, int enable)
{
 if (enable) {
  wm97xx_reg_write(wm, AC97_WM97XX_DIGITISER2,
     wm->dig[2] | WM97XX_PRP_DET_DIG);
  wm97xx_reg_read(wm, AC97_WM97XX_DIGITISER_RD);
 } else
  wm97xx_reg_write(wm, AC97_WM97XX_DIGITISER2,
     wm->dig[2] & ~WM97XX_PRP_DET_DIG);
}
