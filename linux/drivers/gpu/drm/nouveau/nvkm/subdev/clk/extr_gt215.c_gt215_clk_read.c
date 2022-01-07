
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
struct gt215_clk {TYPE_1__ base; } ;
typedef enum nv_clk_src { ____Placeholder_nv_clk_src } nv_clk_src ;


 int EINVAL ;
 struct gt215_clk* gt215_clk (struct nvkm_clk*) ;
 int nvkm_error (struct nvkm_subdev*,char*,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int read_clk (struct gt215_clk*,int,int) ;
 int read_pll (struct gt215_clk*,int,int) ;

__attribute__((used)) static int
gt215_clk_read(struct nvkm_clk *base, enum nv_clk_src src)
{
 struct gt215_clk *clk = gt215_clk(base);
 struct nvkm_subdev *subdev = &clk->base.subdev;
 struct nvkm_device *device = subdev->device;
 u32 hsrc;

 switch (src) {
 case 134:
  return device->crystal;
 case 136:
 case 135:
  return read_pll(clk, 0x00, 0x4200);
 case 129:
  return read_pll(clk, 0x01, 0x4220);
 case 131:
  return read_pll(clk, 0x02, 0x4000);
 case 133:
  return read_clk(clk, 0x20, 0);
 case 128:
  return read_clk(clk, 0x21, 0);
 case 130:
  return read_clk(clk, 0x25, 0);
 case 132:
  hsrc = (nvkm_rd32(device, 0xc040) & 0x30000000) >> 28;
  switch (hsrc) {
  case 0:
   return read_clk(clk, 0x1d, 0);
  case 2:
  case 3:
   return 277000;
  default:
   nvkm_error(subdev, "unknown HOST clock source %d\n", hsrc);
   return -EINVAL;
  }
 default:
  nvkm_error(subdev, "invalid clock source %d\n", src);
  return -EINVAL;
 }

 return 0;
}
