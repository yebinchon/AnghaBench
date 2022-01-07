
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_nvdec {int engine; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_nvdec* kzalloc (int,int ) ;
 int nvkm_engine_ctor (int *,struct nvkm_device*,int,int,int *) ;
 int nvkm_nvdec ;

int
nvkm_nvdec_new_(struct nvkm_device *device, int index,
  struct nvkm_nvdec **pnvdec)
{
 struct nvkm_nvdec *nvdec;

 if (!(nvdec = *pnvdec = kzalloc(sizeof(*nvdec), GFP_KERNEL)))
  return -ENOMEM;

 return nvkm_engine_ctor(&nvkm_nvdec, device, index, 1,
    &nvdec->engine);
}
