
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int crystal; } ;
struct nvkm_clk {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct gf100_clk {TYPE_1__ base; } ;
typedef enum nv_clk_src { ____Placeholder_nv_clk_src } nv_clk_src ;


 int EINVAL ;
 struct gf100_clk* gf100_clk (struct nvkm_clk*) ;
 int nvkm_clk_read (TYPE_1__*,int const) ;
 int nvkm_error (struct nvkm_subdev*,char*,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int read_clk (struct gf100_clk*,int) ;
 int read_div (struct gf100_clk*,int ,int,int) ;
 int read_pll (struct gf100_clk*,int) ;

__attribute__((used)) static int
gf100_clk_read(struct nvkm_clk *base, enum nv_clk_src src)
{
 struct gf100_clk *clk = gf100_clk(base);
 struct nvkm_subdev *subdev = &clk->base.subdev;
 struct nvkm_device *device = subdev->device;

 switch (src) {
 case 143:
  return device->crystal;
 case 141:
  return 100000;
 case 130:
  return read_pll(clk, 0x00e800);
 case 129:
  return read_pll(clk, 0x00e820);

 case 133:
  return read_div(clk, 0, 0x137320, 0x137330);
 case 134:
  return read_pll(clk, 0x132020);
 case 135:
  return read_pll(clk, 0x132000);
 case 137:
  return read_div(clk, 0, 0x137300, 0x137310);
 case 136:
  if (nvkm_rd32(device, 0x1373f0) & 0x00000002)
   return nvkm_clk_read(&clk->base, 135);
  return nvkm_clk_read(&clk->base, 137);

 case 142:
  return read_clk(clk, 0x00);
 case 131:
  return read_clk(clk, 0x01);
 case 138:
  return read_clk(clk, 0x02);
 case 139:
  return read_clk(clk, 0x07);
 case 140:
  return read_clk(clk, 0x08);
 case 144:
  return read_clk(clk, 0x09);
 case 132:
  return read_clk(clk, 0x0c);
 case 128:
  return read_clk(clk, 0x0e);
 default:
  nvkm_error(subdev, "invalid clock source %d\n", src);
  return -EINVAL;
 }
}
