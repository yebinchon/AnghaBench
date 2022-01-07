
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_ltc_func {int zbc; } ;
struct nvkm_ltc {int zbc_min; scalar_t__ zbc_max; struct nvkm_ltc_func const* func; int subdev; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NVKM_LTC_MAX_ZBC_CNT ;
 struct nvkm_ltc* kzalloc (int,int ) ;
 scalar_t__ min (int ,int ) ;
 int nvkm_ltc ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;

int
nvkm_ltc_new_(const struct nvkm_ltc_func *func, struct nvkm_device *device,
       int index, struct nvkm_ltc **pltc)
{
 struct nvkm_ltc *ltc;

 if (!(ltc = *pltc = kzalloc(sizeof(*ltc), GFP_KERNEL)))
  return -ENOMEM;

 nvkm_subdev_ctor(&nvkm_ltc, device, index, &ltc->subdev);
 ltc->func = func;
 ltc->zbc_min = 1;
 ltc->zbc_max = min(func->zbc, NVKM_LTC_MAX_ZBC_CNT) - 1;
 return 0;
}
