
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device {int dummy; } ;
struct nvkm_bar {int dummy; } ;


 int nv50_bar_func ;
 int nv50_bar_new_ (int *,struct nvkm_device*,int,int,struct nvkm_bar**) ;

int
nv50_bar_new(struct nvkm_device *device, int index, struct nvkm_bar **pbar)
{
 return nv50_bar_new_(&nv50_bar_func, device, index, 0x1400, pbar);
}
