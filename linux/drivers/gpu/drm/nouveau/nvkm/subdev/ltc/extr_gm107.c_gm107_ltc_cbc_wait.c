
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_ltc {int ltc_nr; int lts_nr; TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_wait_msec (struct nvkm_device*,int,int const,int,int) ;

void
gm107_ltc_cbc_wait(struct nvkm_ltc *ltc)
{
 struct nvkm_device *device = ltc->subdev.device;
 int c, s;
 for (c = 0; c < ltc->ltc_nr; c++) {
  for (s = 0; s < ltc->lts_nr; s++) {
   const u32 addr = 0x14046c + (c * 0x2000) + (s * 0x200);
   nvkm_wait_msec(device, 2000, addr,
           0x00000004, 0x00000000);
  }
 }
}
