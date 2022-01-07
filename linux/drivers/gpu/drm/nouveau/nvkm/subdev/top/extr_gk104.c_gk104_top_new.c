
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_top {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gk104_top ;
 int nvkm_top_new_ (int *,struct nvkm_device*,int,struct nvkm_top**) ;

int
gk104_top_new(struct nvkm_device *device, int index, struct nvkm_top **ptop)
{
 return nvkm_top_new_(&gk104_top, device, index, ptop);
}
