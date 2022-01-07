
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_ltc {TYPE_1__* func; int * zbc_depth; } ;
struct TYPE_2__ {int (* zbc_clear_depth ) (struct nvkm_ltc*,int,int const) ;} ;


 int stub1 (struct nvkm_ltc*,int,int const) ;

int
nvkm_ltc_zbc_depth_get(struct nvkm_ltc *ltc, int index, const u32 depth)
{
 ltc->zbc_depth[index] = depth;
 ltc->func->zbc_clear_depth(ltc, index, depth);
 return index;
}
