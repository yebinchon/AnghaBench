
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int crystal; } ;
struct nvkm_clk {int dummy; } ;
struct gk20a_pll {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct gk20a_clk {TYPE_1__ base; } ;
typedef enum nv_clk_src { ____Placeholder_nv_clk_src } nv_clk_src ;


 int EINVAL ;
 int GK20A_CLK_GPC_MDIV ;
 struct gk20a_clk* gk20a_clk (struct nvkm_clk*) ;
 int gk20a_pllg_calc_rate (struct gk20a_clk*,struct gk20a_pll*) ;
 int gk20a_pllg_read_mnp (struct gk20a_clk*,struct gk20a_pll*) ;


 int nvkm_error (struct nvkm_subdev*,char*,int) ;

int
gk20a_clk_read(struct nvkm_clk *base, enum nv_clk_src src)
{
 struct gk20a_clk *clk = gk20a_clk(base);
 struct nvkm_subdev *subdev = &clk->base.subdev;
 struct nvkm_device *device = subdev->device;
 struct gk20a_pll pll;

 switch (src) {
 case 129:
  return device->crystal;
 case 128:
  gk20a_pllg_read_mnp(clk, &pll);
  return gk20a_pllg_calc_rate(clk, &pll) / GK20A_CLK_GPC_MDIV;
 default:
  nvkm_error(subdev, "invalid clock source %d\n", src);
  return -EINVAL;
 }
}
