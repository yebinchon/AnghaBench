
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wm97xx {int pen_probably_down; int dev; TYPE_1__* mach_ops; } ;
struct TYPE_2__ {int (* post_sample ) (int) ;int (* pre_sample ) (int) ;} ;


 int AC97_LINK_FRAME ;
 int AC97_WM97XX_DIGITISER1 ;
 int AC97_WM97XX_DIGITISER_RD ;
 int RC_AGAIN ;
 int RC_PENUP ;
 int RC_VALID ;
 int WM97XX_ADCSEL_MASK ;
 int WM97XX_DELAY (int) ;
 int WM97XX_PEN_DOWN ;
 int WM97XX_POLL ;
 int delay ;
 int dev_dbg (int ,char*,...) ;
 scalar_t__ is_pden (struct wm97xx*) ;
 int poll_delay (int) ;
 int stub1 (int) ;
 int stub2 (int) ;
 int udelay (int ) ;
 int wm97xx_reg_read (struct wm97xx*,int ) ;
 int wm97xx_reg_write (struct wm97xx*,int ,int) ;

__attribute__((used)) static int wm9712_poll_sample(struct wm97xx *wm, int adcsel, int *sample)
{
 int timeout = 5 * delay;
 bool wants_pen = adcsel & WM97XX_PEN_DOWN;

 if (wants_pen && !wm->pen_probably_down) {
  u16 data = wm97xx_reg_read(wm, AC97_WM97XX_DIGITISER_RD);
  if (!(data & WM97XX_PEN_DOWN))
   return RC_PENUP;
  wm->pen_probably_down = 1;
 }


 if (wm->mach_ops && wm->mach_ops->pre_sample)
  wm->mach_ops->pre_sample(adcsel);
 wm97xx_reg_write(wm, AC97_WM97XX_DIGITISER1, (adcsel & WM97XX_ADCSEL_MASK)
    | WM97XX_POLL | WM97XX_DELAY(delay));


 poll_delay(delay);


 while ((wm97xx_reg_read(wm, AC97_WM97XX_DIGITISER1) & WM97XX_POLL)
        && timeout) {
  udelay(AC97_LINK_FRAME);
  timeout--;
 }

 if (timeout <= 0) {

  if (is_pden(wm))
   wm->pen_probably_down = 0;
  else
   dev_dbg(wm->dev, "adc sample timeout\n");
  return RC_PENUP;
 }

 *sample = wm97xx_reg_read(wm, AC97_WM97XX_DIGITISER_RD);
 if (wm->mach_ops && wm->mach_ops->post_sample)
  wm->mach_ops->post_sample(adcsel);


 if ((*sample ^ adcsel) & WM97XX_ADCSEL_MASK) {
  dev_dbg(wm->dev, "adc wrong sample, wanted %x got %x\n",
   adcsel & WM97XX_ADCSEL_MASK,
   *sample & WM97XX_ADCSEL_MASK);
  return RC_AGAIN;
 }

 if (wants_pen && !(*sample & WM97XX_PEN_DOWN)) {

  *sample = wm97xx_reg_read(wm, AC97_WM97XX_DIGITISER_RD);
  if (!(*sample & WM97XX_PEN_DOWN)) {
   wm->pen_probably_down = 0;
   return RC_PENUP;
  }
 }

 return RC_VALID;
}
