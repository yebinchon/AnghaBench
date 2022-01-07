
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_specdom {int dummy; } ;
struct nvkm_pm {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nv40_pm {struct nvkm_pm base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv40_pm* kzalloc (int,int ) ;
 int nv40_pm_ ;
 int nvkm_perfdom_new (struct nvkm_pm*,char*,int ,int ,int ,int,struct nvkm_specdom const*) ;
 int nvkm_pm_ctor (int *,struct nvkm_device*,int,struct nvkm_pm*) ;

int
nv40_pm_new_(const struct nvkm_specdom *doms, struct nvkm_device *device,
      int index, struct nvkm_pm **ppm)
{
 struct nv40_pm *pm;
 int ret;

 if (!(pm = kzalloc(sizeof(*pm), GFP_KERNEL)))
  return -ENOMEM;
 *ppm = &pm->base;

 ret = nvkm_pm_ctor(&nv40_pm_, device, index, &pm->base);
 if (ret)
  return ret;

 return nvkm_perfdom_new(&pm->base, "pc", 0, 0, 0, 4, doms);
}
