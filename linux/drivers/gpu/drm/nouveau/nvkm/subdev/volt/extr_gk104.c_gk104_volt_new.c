
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_volt_func {int dummy; } ;
struct nvkm_volt {int subdev; } ;
struct nvkm_device {int gpio; int bios; } ;
struct nvbios_volt {scalar_t__ type; } ;
struct gk104_volt {struct nvkm_volt base; struct nvbios_volt bios; } ;
struct dcb_gpio_func {int dummy; } ;


 int DCB_GPIO_VID_PWM ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ NVBIOS_VOLT_PWM ;
 struct nvkm_volt_func const gk104_volt_gpio ;
 struct nvkm_volt_func const gk104_volt_pwm ;
 struct gk104_volt* kzalloc (int,int ) ;
 int nvbios_volt_parse (int ,int *,int *,int *,int *,struct nvbios_volt*) ;
 int nvkm_debug (int *,char*,char const*) ;
 int nvkm_error (int *,char*) ;
 int nvkm_gpio_find (int ,int ,int ,int,struct dcb_gpio_func*) ;
 int nvkm_volt_ctor (struct nvkm_volt_func const*,struct nvkm_device*,int,struct nvkm_volt*) ;
 int nvkm_voltgpio_init (struct nvkm_volt*) ;

int
gk104_volt_new(struct nvkm_device *device, int index, struct nvkm_volt **pvolt)
{
 const struct nvkm_volt_func *volt_func = &gk104_volt_gpio;
 struct dcb_gpio_func gpio;
 struct nvbios_volt bios;
 struct gk104_volt *volt;
 u8 ver, hdr, cnt, len;
 const char *mode;

 if (!nvbios_volt_parse(device->bios, &ver, &hdr, &cnt, &len, &bios))
  return 0;

 if (!nvkm_gpio_find(device->gpio, 0, DCB_GPIO_VID_PWM, 0xff, &gpio) &&
     bios.type == NVBIOS_VOLT_PWM) {
  volt_func = &gk104_volt_pwm;
 }

 if (!(volt = kzalloc(sizeof(*volt), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_volt_ctor(volt_func, device, index, &volt->base);
 *pvolt = &volt->base;
 volt->bios = bios;





 if (bios.type == NVBIOS_VOLT_PWM && volt_func != &gk104_volt_pwm) {
  nvkm_error(&volt->base.subdev,
      "Type mismatch between the voltage table type and "
      "the GPIO table. Fallback to GPIO mode.\n");
 }

 if (volt_func == &gk104_volt_gpio) {
  nvkm_voltgpio_init(&volt->base);
  mode = "GPIO";
 } else
  mode = "PWM";

 nvkm_debug(&volt->base.subdev, "Using %s mode\n", mode);

 return 0;
}
