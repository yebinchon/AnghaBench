
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wm97xx {int id; void** gpio; TYPE_1__* codec; int dev; int variant; int codec_mutex; } ;
struct TYPE_4__ {int (* phy_init ) (struct wm97xx*) ;} ;


 int AC97_GPIO_CFG ;
 int AC97_GPIO_POLARITY ;
 int AC97_GPIO_STATUS ;
 int AC97_GPIO_STICKY ;
 int AC97_GPIO_WAKEUP ;
 int AC97_MISC_AFE ;
 int AC97_VENDOR_ID1 ;
 int AC97_VENDOR_ID2 ;
 int ENODEV ;
 int WM97XX_ID1 ;
 int WM97xx_GENERIC ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,int) ;
 int dev_set_drvdata (int ,struct wm97xx*) ;
 int mutex_init (int *) ;
 int stub1 (struct wm97xx*) ;
 TYPE_1__ wm9705_codec ;
 TYPE_1__ wm9712_codec ;
 TYPE_1__ wm9713_codec ;
 void* wm97xx_reg_read (struct wm97xx*,int ) ;
 int wm97xx_register_touch (struct wm97xx*) ;

__attribute__((used)) static int _wm97xx_probe(struct wm97xx *wm)
{
 int id = 0;

 mutex_init(&wm->codec_mutex);
 dev_set_drvdata(wm->dev, wm);


 id = wm97xx_reg_read(wm, AC97_VENDOR_ID1);
 if (id != WM97XX_ID1) {
  dev_err(wm->dev,
   "Device with vendor %04x is not a wm97xx\n", id);
  return -ENODEV;
 }

 wm->id = wm97xx_reg_read(wm, AC97_VENDOR_ID2);

 wm->variant = WM97xx_GENERIC;

 dev_info(wm->dev, "detected a wm97%02x codec\n", wm->id & 0xff);

 switch (wm->id & 0xff) {
 default:
  dev_err(wm->dev, "Support for wm97%02x not compiled in.\n",
   wm->id & 0xff);
  return -ENODEV;
 }


 wm->codec->phy_init(wm);


 wm->gpio[0] = wm97xx_reg_read(wm, AC97_GPIO_CFG);
 wm->gpio[1] = wm97xx_reg_read(wm, AC97_GPIO_POLARITY);
 wm->gpio[2] = wm97xx_reg_read(wm, AC97_GPIO_STICKY);
 wm->gpio[3] = wm97xx_reg_read(wm, AC97_GPIO_WAKEUP);
 wm->gpio[4] = wm97xx_reg_read(wm, AC97_GPIO_STATUS);
 wm->gpio[5] = wm97xx_reg_read(wm, AC97_MISC_AFE);

 return wm97xx_register_touch(wm);
}
