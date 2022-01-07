
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
struct mcp77_clk {TYPE_1__ base; } ;
typedef enum nv_clk_src { ____Placeholder_nv_clk_src } nv_clk_src ;


 struct mcp77_clk* mcp77_clk (struct nvkm_clk*) ;
 int nvkm_clk_read (TYPE_1__*,int const) ;
 int nvkm_debug (struct nvkm_subdev*,char*,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int read_div (struct mcp77_clk*) ;
 int read_pll (struct mcp77_clk*,int) ;

__attribute__((used)) static int
mcp77_clk_read(struct nvkm_clk *base, enum nv_clk_src src)
{
 struct mcp77_clk *clk = mcp77_clk(base);
 struct nvkm_subdev *subdev = &clk->base.subdev;
 struct nvkm_device *device = subdev->device;
 u32 mast = nvkm_rd32(device, 0x00c054);
 u32 P = 0;

 switch (src) {
 case 135:
  return device->crystal;
 case 131:
  return 100000;
 case 133:
  return nvkm_clk_read(&clk->base, 131) * 4;
 case 134:
  return nvkm_clk_read(&clk->base, 131) * 2 / 3;
 case 132:
  switch (mast & 0x000c0000) {
  case 0x00000000: return nvkm_clk_read(&clk->base, 134);
  case 0x00040000: break;
  case 0x00080000: return nvkm_clk_read(&clk->base, 133);
  case 0x000c0000: return nvkm_clk_read(&clk->base, 137);
  }
  break;
 case 136:
  P = (nvkm_rd32(device, 0x004028) & 0x00070000) >> 16;

  switch (mast & 0x00000003) {
  case 0x00000000: return nvkm_clk_read(&clk->base, 135) >> P;
  case 0x00000001: return 0;
  case 0x00000002: return nvkm_clk_read(&clk->base, 133) >> P;
  case 0x00000003: return read_pll(clk, 0x004028) >> P;
  }
  break;
 case 137:
  if ((mast & 0x03000000) != 0x03000000)
   return nvkm_clk_read(&clk->base, 136);

  if ((mast & 0x00000200) == 0x00000000)
   return nvkm_clk_read(&clk->base, 136);

  switch (mast & 0x00000c00) {
  case 0x00000000: return nvkm_clk_read(&clk->base, 131);
  case 0x00000400: return nvkm_clk_read(&clk->base, 133);
  case 0x00000800: return nvkm_clk_read(&clk->base, 134);
  default: return 0;
  }
 case 129:
  P = (nvkm_rd32(device, 0x004020) & 0x00070000) >> 16;
  switch (mast & 0x00000030) {
  case 0x00000000:
   if (mast & 0x00000040)
    return nvkm_clk_read(&clk->base, 131) >> P;
   return nvkm_clk_read(&clk->base, 135) >> P;
  case 0x00000010: break;
  case 0x00000020: return read_pll(clk, 0x004028) >> P;
  case 0x00000030: return read_pll(clk, 0x004020) >> P;
  }
  break;
 case 130:
  return 0;
  break;
 case 128:
  P = (read_div(clk) & 0x00000700) >> 8;

  switch (mast & 0x00400000) {
  case 0x00400000:
   return nvkm_clk_read(&clk->base, 136) >> P;
   break;
  default:
   return 500000 >> P;
   break;
  }
  break;
 default:
  break;
 }

 nvkm_debug(subdev, "unknown clock source %d %08x\n", src, mast);
 return 0;
}
