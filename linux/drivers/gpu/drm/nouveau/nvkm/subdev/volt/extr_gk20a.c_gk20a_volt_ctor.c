
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_device_tegra {int gpu_speedo; int vdd; } ;
struct nvkm_device {TYPE_1__* func; } ;
struct TYPE_6__ {int vid_nr; TYPE_2__* vid; int subdev; } ;
struct gk20a_volt {TYPE_3__ base; int vdd; } ;
struct cvb_coef {int dummy; } ;
struct TYPE_5__ {int vid; int uv; } ;
struct TYPE_4__ {struct nvkm_device_tegra* (* tegra ) (struct nvkm_device*) ;} ;


 int gk20a_volt ;
 int gk20a_volt_calc_voltage (struct cvb_coef const*,int ) ;
 int max (int ,int) ;
 int nvkm_debug (int *,char*,int,...) ;
 int nvkm_volt_ctor (int *,struct nvkm_device*,int,TYPE_3__*) ;
 int regulator_get_voltage (int ) ;
 struct nvkm_device_tegra* stub1 (struct nvkm_device*) ;

int
gk20a_volt_ctor(struct nvkm_device *device, int index,
  const struct cvb_coef *coefs, int nb_coefs,
  int vmin, struct gk20a_volt *volt)
{
 struct nvkm_device_tegra *tdev = device->func->tegra(device);
 int i, uv;

 nvkm_volt_ctor(&gk20a_volt, device, index, &volt->base);

 uv = regulator_get_voltage(tdev->vdd);
 nvkm_debug(&volt->base.subdev, "the default voltage is %duV\n", uv);

 volt->vdd = tdev->vdd;

 volt->base.vid_nr = nb_coefs;
 for (i = 0; i < volt->base.vid_nr; i++) {
  volt->base.vid[i].vid = i;
  volt->base.vid[i].uv = max(
   gk20a_volt_calc_voltage(&coefs[i], tdev->gpu_speedo),
   vmin);
  nvkm_debug(&volt->base.subdev, "%2d: vid=%d, uv=%d\n", i,
      volt->base.vid[i].vid, volt->base.vid[i].uv);
 }

 return 0;
}
