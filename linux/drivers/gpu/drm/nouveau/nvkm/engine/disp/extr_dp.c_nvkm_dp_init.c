
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct nvkm_outp {TYPE_3__* disp; } ;
struct nvkm_gpio {int dummy; } ;
struct TYPE_13__ {TYPE_5__* conn; } ;
struct nvkm_dp {int hpd; TYPE_6__ outp; } ;
struct TYPE_14__ {struct nvkm_gpio* gpio; } ;
struct TYPE_11__ {scalar_t__ type; } ;
struct TYPE_12__ {TYPE_4__ info; int hpd; } ;
struct TYPE_8__ {TYPE_7__* device; } ;
struct TYPE_9__ {TYPE_1__ subdev; } ;
struct TYPE_10__ {TYPE_2__ engine; } ;


 scalar_t__ DCB_CONNECTOR_eDP ;
 int DCB_GPIO_PANEL_POWER ;
 int msleep (int) ;
 struct nvkm_dp* nvkm_dp (struct nvkm_outp*) ;
 int nvkm_dp_enable (struct nvkm_dp*,int) ;
 int nvkm_gpio_get (struct nvkm_gpio*,int ,int ,int) ;
 int nvkm_gpio_set (struct nvkm_gpio*,int ,int ,int,int) ;
 int nvkm_notify_get (int *) ;
 int nvkm_notify_put (int *) ;

__attribute__((used)) static void
nvkm_dp_init(struct nvkm_outp *outp)
{
 struct nvkm_gpio *gpio = outp->disp->engine.subdev.device->gpio;
 struct nvkm_dp *dp = nvkm_dp(outp);

 nvkm_notify_put(&dp->outp.conn->hpd);





 if (dp->outp.conn->info.type == DCB_CONNECTOR_eDP) {
  int power = nvkm_gpio_get(gpio, 0, DCB_GPIO_PANEL_POWER, 0xff);
  if (power == 0)
   nvkm_gpio_set(gpio, 0, DCB_GPIO_PANEL_POWER, 0xff, 1);
  msleep(300);




  if (!nvkm_dp_enable(dp, 1) && power == 0)
   nvkm_gpio_set(gpio, 0, DCB_GPIO_PANEL_POWER, 0xff, 0);
 } else {
  nvkm_dp_enable(dp, 1);
 }

 nvkm_notify_get(&dp->hpd);
}
