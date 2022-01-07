
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_ram {int dummy; } ;
struct gt215_ram {int fuc; } ;


 struct gt215_ram* gt215_ram (struct nvkm_ram*) ;
 int ram_exec (int *,int) ;

__attribute__((used)) static void
gt215_ram_tidy(struct nvkm_ram *base)
{
 struct gt215_ram *ram = gt215_ram(base);
 ram_exec(&ram->fuc, 0);
}
