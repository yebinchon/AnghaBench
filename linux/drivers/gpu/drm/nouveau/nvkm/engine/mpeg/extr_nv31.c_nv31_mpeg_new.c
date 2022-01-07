
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int nv31_mpeg ;
 int nv31_mpeg_new_ (int *,struct nvkm_device*,int,struct nvkm_engine**) ;

int
nv31_mpeg_new(struct nvkm_device *device, int index, struct nvkm_engine **pmpeg)
{
 return nv31_mpeg_new_(&nv31_mpeg, device, index, pmpeg);
}
