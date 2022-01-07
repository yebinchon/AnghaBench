
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct wm97xx {scalar_t__ id; scalar_t__ variant; int codec_mutex; } ;
typedef enum wm97xx_gpio_status { ____Placeholder_wm97xx_gpio_status } wm97xx_gpio_status ;


 int AC97_GPIO_STATUS ;
 scalar_t__ WM9712_ID2 ;
 int WM97XX_GPIO_HIGH ;
 scalar_t__ WM97xx_WM1613 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm97xx_reg_read (struct wm97xx*,int ) ;
 int wm97xx_reg_write (struct wm97xx*,int ,int) ;

void wm97xx_set_gpio(struct wm97xx *wm, u32 gpio,
    enum wm97xx_gpio_status status)
{
 u16 reg;

 mutex_lock(&wm->codec_mutex);
 reg = wm97xx_reg_read(wm, AC97_GPIO_STATUS);

 if (status == WM97XX_GPIO_HIGH)
  reg |= gpio;
 else
  reg &= ~gpio;

 if (wm->id == WM9712_ID2 && wm->variant != WM97xx_WM1613)
  wm97xx_reg_write(wm, AC97_GPIO_STATUS, reg << 1);
 else
  wm97xx_reg_write(wm, AC97_GPIO_STATUS, reg);
 mutex_unlock(&wm->codec_mutex);
}
