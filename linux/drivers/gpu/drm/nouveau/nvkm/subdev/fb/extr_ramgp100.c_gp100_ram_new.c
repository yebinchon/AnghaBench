
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_ram {int dummy; } ;
struct nvkm_fb {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int gf100_ram_ctor (int *,struct nvkm_fb*,struct nvkm_ram*) ;
 int gp100_ram ;
 struct nvkm_ram* kzalloc (int,int ) ;

int
gp100_ram_new(struct nvkm_fb *fb, struct nvkm_ram **pram)
{
 struct nvkm_ram *ram;

 if (!(ram = *pram = kzalloc(sizeof(*ram), GFP_KERNEL)))
  return -ENOMEM;

 return gf100_ram_ctor(&gp100_ram, fb, ram);

}
