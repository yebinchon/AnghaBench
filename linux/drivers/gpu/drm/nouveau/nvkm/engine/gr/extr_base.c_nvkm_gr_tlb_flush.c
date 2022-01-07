
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_gr {TYPE_1__* func; } ;
struct TYPE_2__ {int (* tlb_flush ) (struct nvkm_gr*) ;} ;


 int ENODEV ;
 int stub1 (struct nvkm_gr*) ;

int
nvkm_gr_tlb_flush(struct nvkm_gr *gr)
{
 if (gr->func->tlb_flush)
  return gr->func->tlb_flush(gr);
 return -ENODEV;
}
