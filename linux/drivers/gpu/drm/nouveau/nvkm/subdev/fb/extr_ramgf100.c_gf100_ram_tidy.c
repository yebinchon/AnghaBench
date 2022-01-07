
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_ram {int dummy; } ;
struct gf100_ram {int fuc; } ;


 struct gf100_ram* gf100_ram (struct nvkm_ram*) ;
 int ram_exec (int *,int) ;

void
gf100_ram_tidy(struct nvkm_ram *base)
{
 struct gf100_ram *ram = gf100_ram(base);
 ram_exec(&ram->fuc, 0);
}
