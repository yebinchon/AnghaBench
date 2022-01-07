
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvkm_gpio {int dummy; } ;
struct TYPE_5__ {int device; } ;
struct nouveau_drm {TYPE_3__* led; TYPE_1__ client; } ;
struct drm_device {int dev; } ;
struct dcb_gpio_func {int dummy; } ;
struct TYPE_6__ {char* name; int max_brightness; int brightness_set; int brightness_get; } ;
struct TYPE_7__ {TYPE_2__ led; struct drm_device* dev; } ;


 int DCB_GPIO_LOGO_LED_PWM ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (TYPE_3__*) ;
 TYPE_3__* kzalloc (int,int ) ;
 int led_classdev_register (int ,TYPE_2__*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_led_get_brightness ;
 int nouveau_led_set_brightness ;
 scalar_t__ nvkm_gpio_find (struct nvkm_gpio*,int ,int ,int,struct dcb_gpio_func*) ;
 struct nvkm_gpio* nvxx_gpio (int *) ;

int
nouveau_led_init(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nvkm_gpio *gpio = nvxx_gpio(&drm->client.device);
 struct dcb_gpio_func logo_led;
 int ret;

 if (!gpio)
  return 0;


 if (nvkm_gpio_find(gpio, 0, DCB_GPIO_LOGO_LED_PWM, 0xff, &logo_led))
  return 0;

 drm->led = kzalloc(sizeof(*drm->led), GFP_KERNEL);
 if (!drm->led)
  return -ENOMEM;
 drm->led->dev = dev;

 drm->led->led.name = "nvidia-logo";
 drm->led->led.max_brightness = 255;
 drm->led->led.brightness_get = nouveau_led_get_brightness;
 drm->led->led.brightness_set = nouveau_led_set_brightness;

 ret = led_classdev_register(dev->dev, &drm->led->led);
 if (ret) {
  kfree(drm->led);
  drm->led = ((void*)0);
  return ret;
 }

 return 0;
}
