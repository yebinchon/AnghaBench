
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int crystal; int chipset; } ;
struct nvkm_clk {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct nv50_clk {TYPE_1__ base; } ;
typedef enum nv_clk_src { ____Placeholder_nv_clk_src } nv_clk_src ;


 int EINVAL ;
 int div_u64 (int,int) ;
 struct nv50_clk* nv50_clk (struct nvkm_clk*) ;
 int nvkm_clk_read (TYPE_1__*,int const) ;
 int nvkm_debug (struct nvkm_subdev*,char*,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int read_div (struct nv50_clk*) ;
 int read_pll (struct nv50_clk*,int) ;

int
nv50_clk_read(struct nvkm_clk *base, enum nv_clk_src src)
{
 struct nv50_clk *clk = nv50_clk(base);
 struct nvkm_subdev *subdev = &clk->base.subdev;
 struct nvkm_device *device = subdev->device;
 u32 mast = nvkm_rd32(device, 0x00c040);
 u32 P = 0;

 switch (src) {
 case 137:
  return device->crystal;
 case 131:
  return 100000;
 case 135:
  return div_u64((u64)nvkm_clk_read(&clk->base, 131) * 27778, 10000);
 case 134:
  return nvkm_clk_read(&clk->base, 135) * 3;
 case 133:
  return nvkm_clk_read(&clk->base, 135) * 3 / 2;
 case 132:
  switch (mast & 0x30000000) {
  case 0x00000000: return nvkm_clk_read(&clk->base, 131);
  case 0x10000000: break;
  case 0x20000000:
  case 0x30000000: return nvkm_clk_read(&clk->base, 135);
  }
  break;
 case 138:
  if (!(mast & 0x00100000))
   P = (nvkm_rd32(device, 0x004028) & 0x00070000) >> 16;
  switch (mast & 0x00000003) {
  case 0x00000000: return nvkm_clk_read(&clk->base, 137) >> P;
  case 0x00000001: return nvkm_clk_read(&clk->base, 136);
  case 0x00000002: return read_pll(clk, 0x004020) >> P;
  case 0x00000003: return read_pll(clk, 0x004028) >> P;
  }
  break;
 case 129:
  P = (nvkm_rd32(device, 0x004020) & 0x00070000) >> 16;
  switch (mast & 0x00000030) {
  case 0x00000000:
   if (mast & 0x00000080)
    return nvkm_clk_read(&clk->base, 132) >> P;
   return nvkm_clk_read(&clk->base, 137) >> P;
  case 0x00000010: break;
  case 0x00000020: return read_pll(clk, 0x004028) >> P;
  case 0x00000030: return read_pll(clk, 0x004020) >> P;
  }
  break;
 case 130:
  P = (nvkm_rd32(device, 0x004008) & 0x00070000) >> 16;
  if (nvkm_rd32(device, 0x004008) & 0x00000200) {
   switch (mast & 0x0000c000) {
   case 0x00000000:
    return nvkm_clk_read(&clk->base, 137) >> P;
   case 0x00008000:
   case 0x0000c000:
    return nvkm_clk_read(&clk->base, 131) >> P;
   }
  } else {
   return read_pll(clk, 0x004008) >> P;
  }
  break;
 case 128:
  P = (read_div(clk) & 0x00000700) >> 8;
  switch (device->chipset) {
  case 0x84:
  case 0x86:
  case 0x92:
  case 0x94:
  case 0x96:
  case 0xa0:
   switch (mast & 0x00000c00) {
   case 0x00000000:
    if (device->chipset == 0xa0)
     return nvkm_clk_read(&clk->base, 138) >> P;
    return nvkm_clk_read(&clk->base, 137) >> P;
   case 0x00000400:
    return 0;
   case 0x00000800:
    if (mast & 0x01000000)
     return read_pll(clk, 0x004028) >> P;
    return read_pll(clk, 0x004030) >> P;
   case 0x00000c00:
    return nvkm_clk_read(&clk->base, 138) >> P;
   }
   break;
  case 0x98:
   switch (mast & 0x00000c00) {
   case 0x00000000:
    return nvkm_clk_read(&clk->base, 138) >> P;
   case 0x00000400:
    return 0;
   case 0x00000800:
    return nvkm_clk_read(&clk->base, 133) >> P;
   case 0x00000c00:
    return nvkm_clk_read(&clk->base, 130) >> P;
   }
   break;
  }
  break;
 case 136:
  switch (device->chipset) {
  case 0x50:
  case 0xa0:
   return read_pll(clk, 0x00e810) >> 2;
  case 0x84:
  case 0x86:
  case 0x92:
  case 0x94:
  case 0x96:
  case 0x98:
   P = (read_div(clk) & 0x00000007) >> 0;
   switch (mast & 0x0c000000) {
   case 0x00000000: return nvkm_clk_read(&clk->base, 131);
   case 0x04000000: break;
   case 0x08000000: return nvkm_clk_read(&clk->base, 135);
   case 0x0c000000:
    return nvkm_clk_read(&clk->base, 134) >> P;
   }
   break;
  default:
   break;
  }
 default:
  break;
 }

 nvkm_debug(subdev, "unknown clock source %d %08x\n", src, mast);
 return -EINVAL;
}
