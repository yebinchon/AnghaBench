
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int crystal; } ;
struct nvkm_clk {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct gk104_clk {TYPE_1__ base; } ;
typedef enum nv_clk_src { ____Placeholder_nv_clk_src } nv_clk_src ;


 int EINVAL ;
 struct gk104_clk* gk104_clk (struct nvkm_clk*) ;
 int nvkm_error (struct nvkm_subdev*,char*,int) ;
 int read_clk (struct gk104_clk*,int) ;
 int read_mem (struct gk104_clk*) ;

__attribute__((used)) static int
gk104_clk_read(struct nvkm_clk *base, enum nv_clk_src src)
{
 struct gk104_clk *clk = gk104_clk(base);
 struct nvkm_subdev *subdev = &clk->base.subdev;
 struct nvkm_device *device = subdev->device;

 switch (src) {
 case 137:
  return device->crystal;
 case 135:
  return 100000;
 case 131:
  return read_mem(clk);
 case 136:
  return read_clk(clk, 0x00);
 case 129:
  return read_clk(clk, 0x01);
 case 132:
  return read_clk(clk, 0x02);
 case 133:
  return read_clk(clk, 0x07);
 case 134:
  return read_clk(clk, 0x08);
 case 130:
  return read_clk(clk, 0x0c);
 case 128:
  return read_clk(clk, 0x0e);
 default:
  nvkm_error(subdev, "invalid clock source %d\n", src);
  return -EINVAL;
 }
}
