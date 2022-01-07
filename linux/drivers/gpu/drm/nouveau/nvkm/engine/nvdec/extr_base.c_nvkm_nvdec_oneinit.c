
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int index; int device; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct nvkm_nvdec {int falcon; int addr; TYPE_1__ engine; } ;
struct nvkm_engine {int dummy; } ;


 int EINVAL ;
 int nvkm_falcon_v1_new (struct nvkm_subdev*,char*,int ,int *) ;
 struct nvkm_nvdec* nvkm_nvdec (struct nvkm_engine*) ;
 int nvkm_top_addr (int ,int ) ;

__attribute__((used)) static int
nvkm_nvdec_oneinit(struct nvkm_engine *engine)
{
 struct nvkm_nvdec *nvdec = nvkm_nvdec(engine);
 struct nvkm_subdev *subdev = &nvdec->engine.subdev;

 nvdec->addr = nvkm_top_addr(subdev->device, subdev->index);
 if (!nvdec->addr)
  return -EINVAL;


 return nvkm_falcon_v1_new(subdev, "NVDEC", nvdec->addr,
      &nvdec->falcon);
}
