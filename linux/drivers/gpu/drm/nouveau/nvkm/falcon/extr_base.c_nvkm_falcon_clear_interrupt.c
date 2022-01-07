
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_falcon {TYPE_1__* func; } ;
struct TYPE_2__ {int (* clear_interrupt ) (struct nvkm_falcon*,int ) ;} ;


 int stub1 (struct nvkm_falcon*,int ) ;

int
nvkm_falcon_clear_interrupt(struct nvkm_falcon *falcon, u32 mask)
{
 return falcon->func->clear_interrupt(falcon, mask);
}
