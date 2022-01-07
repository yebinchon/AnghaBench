
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_disp_func {int dummy; } ;
struct nvkm_disp {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_disp* kzalloc (int,int ) ;
 int nvkm_disp_ctor (struct nvkm_disp_func const*,struct nvkm_device*,int,struct nvkm_disp*) ;

int
nvkm_disp_new_(const struct nvkm_disp_func *func, struct nvkm_device *device,
        int index, struct nvkm_disp **pdisp)
{
 if (!(*pdisp = kzalloc(sizeof(**pdisp), GFP_KERNEL)))
  return -ENOMEM;
 return nvkm_disp_ctor(func, device, index, *pdisp);
}
