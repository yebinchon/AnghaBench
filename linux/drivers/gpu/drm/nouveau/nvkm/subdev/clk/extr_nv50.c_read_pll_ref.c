
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct nv50_clk {TYPE_1__ base; } ;


 int nv_clk_src_crystal ;
 int nv_clk_src_href ;
 int nvkm_clk_read (TYPE_1__*,int ) ;
 int nvkm_error (struct nvkm_subdev*,char*,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int read_pll_src (struct nv50_clk*,int) ;

__attribute__((used)) static u32
read_pll_ref(struct nv50_clk *clk, u32 base)
{
 struct nvkm_subdev *subdev = &clk->base.subdev;
 struct nvkm_device *device = subdev->device;
 u32 src, mast = nvkm_rd32(device, 0x00c040);

 switch (base) {
 case 0x004028:
  src = !!(mast & 0x00200000);
  break;
 case 0x004020:
  src = !!(mast & 0x00400000);
  break;
 case 0x004008:
  src = !!(mast & 0x00010000);
  break;
 case 0x004030:
  src = !!(mast & 0x02000000);
  break;
 case 0x00e810:
  return nvkm_clk_read(&clk->base, nv_clk_src_crystal);
 default:
  nvkm_error(subdev, "bad pll %06x\n", base);
  return 0;
 }

 if (src)
  return nvkm_clk_read(&clk->base, nv_clk_src_href);

 return read_pll_src(clk, base);
}
