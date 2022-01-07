
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int g84_mpeg ;
 int nvkm_engine_new_ (int *,struct nvkm_device*,int,int,struct nvkm_engine**) ;

int
g84_mpeg_new(struct nvkm_device *device, int index, struct nvkm_engine **pmpeg)
{
 return nvkm_engine_new_(&g84_mpeg, device, index, 1, pmpeg);
}
