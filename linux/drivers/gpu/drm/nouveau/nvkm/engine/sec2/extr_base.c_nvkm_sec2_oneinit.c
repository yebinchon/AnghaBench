
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int index; int device; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct nvkm_sec2 {int falcon; scalar_t__ addr; TYPE_1__ engine; } ;
struct nvkm_engine {int dummy; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int nvkm_falcon_v1_new (struct nvkm_subdev*,char*,scalar_t__,int *) ;
 struct nvkm_sec2* nvkm_sec2 (struct nvkm_engine*) ;
 scalar_t__ nvkm_top_addr (int ,int ) ;

__attribute__((used)) static int
nvkm_sec2_oneinit(struct nvkm_engine *engine)
{
 struct nvkm_sec2 *sec2 = nvkm_sec2(engine);
 struct nvkm_subdev *subdev = &sec2->engine.subdev;

 if (!sec2->addr) {
  sec2->addr = nvkm_top_addr(subdev->device, subdev->index);
  if (WARN_ON(!sec2->addr))
   return -EINVAL;
 }

 return nvkm_falcon_v1_new(subdev, "SEC2", sec2->addr, &sec2->falcon);
}
