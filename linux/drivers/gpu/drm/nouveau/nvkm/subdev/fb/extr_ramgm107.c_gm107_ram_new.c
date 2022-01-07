
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_ram {int dummy; } ;
struct nvkm_fb {int dummy; } ;


 int gk104_ram_new_ (int *,struct nvkm_fb*,struct nvkm_ram**) ;
 int gm107_ram ;

int
gm107_ram_new(struct nvkm_fb *fb, struct nvkm_ram **pram)
{
 return gk104_ram_new_(&gm107_ram, fb, pram);
}
