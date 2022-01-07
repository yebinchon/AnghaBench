
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_ltc {TYPE_1__* func; int * zbc_color; } ;
struct TYPE_2__ {int (* zbc_clear_color ) (struct nvkm_ltc*,int,int const*) ;} ;


 int memcpy (int ,int const*,int) ;
 int stub1 (struct nvkm_ltc*,int,int const*) ;

int
nvkm_ltc_zbc_color_get(struct nvkm_ltc *ltc, int index, const u32 color[4])
{
 memcpy(ltc->zbc_color[index], color, sizeof(ltc->zbc_color[index]));
 ltc->func->zbc_clear_color(ltc, index, color);
 return index;
}
