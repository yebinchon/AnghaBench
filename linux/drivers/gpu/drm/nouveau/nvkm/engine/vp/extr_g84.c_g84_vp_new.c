
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int g84_vp ;
 int nvkm_xtensa_new_ (int *,struct nvkm_device*,int,int,int,struct nvkm_engine**) ;

int
g84_vp_new(struct nvkm_device *device, int index, struct nvkm_engine **pengine)
{
 return nvkm_xtensa_new_(&g84_vp, device, index,
    1, 0x00f000, pengine);
}
