
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_enum {char* name; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {TYPE_1__ engine; } ;
struct gf100_gr {TYPE_2__ base; } ;
typedef int glob ;


 int TPC_UNIT (int,int,int) ;
 int gf100_mp_global_error ;
 int gf100_mp_warp_error ;
 struct nvkm_enum* nvkm_enum_find (int ,int) ;
 int nvkm_error (struct nvkm_subdev*,char*,int,int,int,int,char*,int,char*) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;
 int nvkm_snprintbf (char*,int,int ,int) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int) ;

__attribute__((used)) static void
gv100_gr_trap_sm(struct gf100_gr *gr, int gpc, int tpc, int sm)
{
 struct nvkm_subdev *subdev = &gr->base.engine.subdev;
 struct nvkm_device *device = subdev->device;
 u32 werr = nvkm_rd32(device, TPC_UNIT(gpc, tpc, 0x730 + (sm * 0x80)));
 u32 gerr = nvkm_rd32(device, TPC_UNIT(gpc, tpc, 0x734 + (sm * 0x80)));
 const struct nvkm_enum *warp;
 char glob[128];

 nvkm_snprintbf(glob, sizeof(glob), gf100_mp_global_error, gerr);
 warp = nvkm_enum_find(gf100_mp_warp_error, werr & 0xffff);

 nvkm_error(subdev, "GPC%i/TPC%i/SM%d trap: "
      "global %08x [%s] warp %04x [%s]\n",
     gpc, tpc, sm, gerr, glob, werr, warp ? warp->name : "");

 nvkm_wr32(device, TPC_UNIT(gpc, tpc, 0x730 + sm * 0x80), 0x00000000);
 nvkm_wr32(device, TPC_UNIT(gpc, tpc, 0x734 + sm * 0x80), gerr);
}
