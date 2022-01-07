
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int crystal; } ;
struct nvkm_clk {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct nv40_clk {TYPE_1__ base; } ;
typedef enum nv_clk_src { ____Placeholder_nv_clk_src } nv_clk_src ;


 int EINVAL ;
 struct nv40_clk* nv40_clk (struct nvkm_clk*) ;





 int nvkm_debug (struct nvkm_subdev*,char*,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int read_clk (struct nv40_clk*,int) ;
 int read_pll_2 (struct nv40_clk*,int) ;

__attribute__((used)) static int
nv40_clk_read(struct nvkm_clk *base, enum nv_clk_src src)
{
 struct nv40_clk *clk = nv40_clk(base);
 struct nvkm_subdev *subdev = &clk->base.subdev;
 struct nvkm_device *device = subdev->device;
 u32 mast = nvkm_rd32(device, 0x00c040);

 switch (src) {
 case 131:
  return device->crystal;
 case 130:
  return 100000;
 case 132:
  return read_clk(clk, (mast & 0x00000003) >> 0);
 case 128:
  return read_clk(clk, (mast & 0x00000030) >> 4);
 case 129:
  return read_pll_2(clk, 0x4020);
 default:
  break;
 }

 nvkm_debug(subdev, "unknown clock source %d %08x\n", src, mast);
 return -EINVAL;
}
