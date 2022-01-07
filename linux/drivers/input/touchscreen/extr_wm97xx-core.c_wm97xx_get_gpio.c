
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct wm97xx {int codec_mutex; } ;
typedef enum wm97xx_gpio_status { ____Placeholder_wm97xx_gpio_status } wm97xx_gpio_status ;


 int AC97_GPIO_STATUS ;
 int WM97XX_GPIO_HIGH ;
 int WM97XX_GPIO_LOW ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm97xx_reg_read (struct wm97xx*,int ) ;

enum wm97xx_gpio_status wm97xx_get_gpio(struct wm97xx *wm, u32 gpio)
{
 u16 status;
 enum wm97xx_gpio_status ret;

 mutex_lock(&wm->codec_mutex);
 status = wm97xx_reg_read(wm, AC97_GPIO_STATUS);

 if (status & gpio)
  ret = WM97XX_GPIO_HIGH;
 else
  ret = WM97XX_GPIO_LOW;

 mutex_unlock(&wm->codec_mutex);
 return ret;
}
