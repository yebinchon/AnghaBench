
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct gf100_clk {TYPE_2__ base; } ;


 int nv_clk_src_sppll0 ;
 int nv_clk_src_sppll1 ;
 int nvkm_clk_read (TYPE_2__*,int ) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

__attribute__((used)) static u32
read_vco(struct gf100_clk *clk, u32 dsrc)
{
 struct nvkm_device *device = clk->base.subdev.device;
 u32 ssrc = nvkm_rd32(device, dsrc);
 if (!(ssrc & 0x00000100))
  return nvkm_clk_read(&clk->base, nv_clk_src_sppll0);
 return nvkm_clk_read(&clk->base, nv_clk_src_sppll1);
}
