
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct nvkm_gr {TYPE_1__* func; } ;
struct TYPE_2__ {int (* units ) (struct nvkm_gr*) ;} ;


 int stub1 (struct nvkm_gr*) ;

u64
nvkm_gr_units(struct nvkm_gr *gr)
{
 if (gr->func->units)
  return gr->func->units(gr);
 return 0;
}
