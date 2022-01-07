
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct gk20a_pll {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct gk20a_clk {TYPE_1__ base; } ;


 int GPC2CLK_OUT ;
 int GPC2CLK_OUT_VCODIV1 ;
 int GPC2CLK_OUT_VCODIV2 ;
 int GPC2CLK_OUT_VCODIV_MASK ;
 int GPC2CLK_OUT_VCODIV_SHIFT ;
 int gk20a_pllg_disable (struct gk20a_clk*) ;
 int gk20a_pllg_enable (struct gk20a_clk*) ;
 int gk20a_pllg_read_mnp (struct gk20a_clk*,struct gk20a_pll*) ;
 int gk20a_pllg_write_mnp (struct gk20a_clk*,struct gk20a_pll const*) ;
 int nvkm_mask (struct nvkm_device*,int ,int ,int) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int
gk20a_pllg_program_mnp(struct gk20a_clk *clk, const struct gk20a_pll *pll)
{
 struct nvkm_subdev *subdev = &clk->base.subdev;
 struct nvkm_device *device = subdev->device;
 struct gk20a_pll cur_pll;
 int ret;

 gk20a_pllg_read_mnp(clk, &cur_pll);


 nvkm_mask(device, GPC2CLK_OUT, GPC2CLK_OUT_VCODIV_MASK,
    GPC2CLK_OUT_VCODIV2 << GPC2CLK_OUT_VCODIV_SHIFT);

 nvkm_mask(device, GPC2CLK_OUT, GPC2CLK_OUT_VCODIV_MASK,
    GPC2CLK_OUT_VCODIV2 << GPC2CLK_OUT_VCODIV_SHIFT);
 nvkm_rd32(device, GPC2CLK_OUT);
 udelay(2);

 gk20a_pllg_disable(clk);

 gk20a_pllg_write_mnp(clk, pll);

 ret = gk20a_pllg_enable(clk);
 if (ret)
  return ret;


 udelay(2);
 nvkm_mask(device, GPC2CLK_OUT, GPC2CLK_OUT_VCODIV_MASK,
    GPC2CLK_OUT_VCODIV1 << GPC2CLK_OUT_VCODIV_SHIFT);

 nvkm_mask(device, GPC2CLK_OUT, GPC2CLK_OUT_VCODIV_MASK,
    GPC2CLK_OUT_VCODIV1 << GPC2CLK_OUT_VCODIV_SHIFT);
 nvkm_rd32(device, GPC2CLK_OUT);

 return 0;
}
