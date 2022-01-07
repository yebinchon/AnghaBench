
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct gm20b_clk {TYPE_3__ base; } ;


 int BIT (int ) ;
 int GPCPLL_CFG ;
 int GPCPLL_CFG_ENABLE ;
 int GPCPLL_CFG_SYNC_MODE ;
 int SEL_VCO ;
 int SEL_VCO_GPC2CLK_OUT_SHIFT ;
 int nvkm_mask (struct nvkm_device*,int ,int ,int ) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;

__attribute__((used)) static void
gm20b_pllg_disable(struct gm20b_clk *clk)
{
 struct nvkm_device *device = clk->base.base.subdev.device;


 nvkm_mask(device, SEL_VCO, BIT(SEL_VCO_GPC2CLK_OUT_SHIFT), 0);


 nvkm_mask(device, GPCPLL_CFG, GPCPLL_CFG_SYNC_MODE, 0);

 nvkm_mask(device, GPCPLL_CFG, GPCPLL_CFG_ENABLE, 0);
 nvkm_rd32(device, GPCPLL_CFG);
}
