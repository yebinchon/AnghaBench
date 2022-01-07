
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_ram {int dummy; } ;
struct nv50_ram {int hwsq; } ;


 struct nv50_ram* nv50_ram (struct nvkm_ram*) ;
 int ram_exec (int *,int) ;

__attribute__((used)) static void
nv50_ram_tidy(struct nvkm_ram *base)
{
 struct nv50_ram *ram = nv50_ram(base);
 ram_exec(&ram->hwsq, 0);
}
