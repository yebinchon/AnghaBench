
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct nvkm_ltc {int tag_base; TYPE_1__ subdev; } ;


 int nvkm_wr32 (int ,int,int ) ;

__attribute__((used)) static void
gm200_ltc_init(struct nvkm_ltc *ltc)
{
 nvkm_wr32(ltc->subdev.device, 0x17e278, ltc->tag_base);
}
