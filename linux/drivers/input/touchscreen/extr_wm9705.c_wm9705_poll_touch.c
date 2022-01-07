
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx_data {int p; int y; int x; } ;
struct wm97xx {int dummy; } ;


 int DEFAULT_PRESSURE ;
 int RC_VALID ;
 int WM97XX_ADCSEL_PRES ;
 int WM97XX_ADCSEL_X ;
 int WM97XX_ADCSEL_Y ;
 int WM97XX_PEN_DOWN ;
 scalar_t__ pil ;
 int wm9705_poll_sample (struct wm97xx*,int,int *) ;

__attribute__((used)) static int wm9705_poll_touch(struct wm97xx *wm, struct wm97xx_data *data)
{
 int rc;

 rc = wm9705_poll_sample(wm, WM97XX_ADCSEL_X | WM97XX_PEN_DOWN, &data->x);
 if (rc != RC_VALID)
  return rc;
 rc = wm9705_poll_sample(wm, WM97XX_ADCSEL_Y | WM97XX_PEN_DOWN, &data->y);
 if (rc != RC_VALID)
  return rc;
 if (pil) {
  rc = wm9705_poll_sample(wm, WM97XX_ADCSEL_PRES | WM97XX_PEN_DOWN, &data->p);
  if (rc != RC_VALID)
   return rc;
 } else
  data->p = DEFAULT_PRESSURE;

 return RC_VALID;
}
