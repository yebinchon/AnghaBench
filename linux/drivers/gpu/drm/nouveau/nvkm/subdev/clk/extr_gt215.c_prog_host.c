
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct gt215_clk_info {int host_out; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct gt215_clk {TYPE_2__ base; struct gt215_clk_info* eng; } ;




 int disable_clk_src (struct gt215_clk*,int) ;
 size_t nv_clk_src_host ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;
 int prog_clk (struct gt215_clk*,int,size_t) ;

__attribute__((used)) static void
prog_host(struct gt215_clk *clk)
{
 struct gt215_clk_info *info = &clk->eng[nv_clk_src_host];
 struct nvkm_device *device = clk->base.subdev.device;
 u32 hsrc = (nvkm_rd32(device, 0xc040));

 switch (info->host_out) {
 case 129:
  if ((hsrc & 0x30000000) == 0) {
   nvkm_wr32(device, 0xc040, hsrc | 0x20000000);
   disable_clk_src(clk, 0x4194);
  }
  break;
 case 128:
  prog_clk(clk, 0x1d, nv_clk_src_host);
  if ((hsrc & 0x30000000) >= 0x20000000) {
   nvkm_wr32(device, 0xc040, hsrc & ~0x30000000);
  }
  break;
 default:
  break;
 }


 nvkm_wr32(device, 0xc044, 0x3e);
}
