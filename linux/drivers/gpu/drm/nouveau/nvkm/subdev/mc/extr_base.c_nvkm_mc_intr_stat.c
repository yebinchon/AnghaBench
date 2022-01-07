
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_mc {TYPE_1__* func; } ;
struct TYPE_2__ {int (* intr_stat ) (struct nvkm_mc*) ;} ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int stub1 (struct nvkm_mc*) ;

__attribute__((used)) static u32
nvkm_mc_intr_stat(struct nvkm_mc *mc)
{
 u32 intr = mc->func->intr_stat(mc);
 if (WARN_ON_ONCE(intr == 0xffffffff))
  intr = 0;
 return intr;
}
