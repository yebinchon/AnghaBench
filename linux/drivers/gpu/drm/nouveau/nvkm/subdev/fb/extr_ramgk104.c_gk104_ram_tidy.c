
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_ram {int dummy; } ;
struct TYPE_2__ {int * next; } ;
struct gk104_ram {int fuc; TYPE_1__ base; } ;


 struct gk104_ram* gk104_ram (struct nvkm_ram*) ;
 int ram_exec (int *,int) ;

void
gk104_ram_tidy(struct nvkm_ram *base)
{
 struct gk104_ram *ram = gk104_ram(base);
 ram->base.next = ((void*)0);
 ram_exec(&ram->fuc, 0);
}
