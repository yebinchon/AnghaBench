
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct gk20a_clk {TYPE_2__ base; } ;


 int BIT (int ) ;
 int GPCPLL_CFG ;
 int GPCPLL_CFG_ENABLE ;
 int SEL_VCO ;
 int SEL_VCO_GPC2CLK_OUT_SHIFT ;
 int nvkm_mask (struct nvkm_device*,int ,int ,int ) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;

__attribute__((used)) static void
gk20a_pllg_disable(struct gk20a_clk *clk)
{
 struct nvkm_device *device = clk->base.subdev.device;


 nvkm_mask(device, SEL_VCO, BIT(SEL_VCO_GPC2CLK_OUT_SHIFT), 0);

 nvkm_mask(device, GPCPLL_CFG, GPCPLL_CFG_ENABLE, 0);
 nvkm_rd32(device, GPCPLL_CFG);
}
