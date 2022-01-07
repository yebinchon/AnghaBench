
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct nvkm_clk {TYPE_2__* func; } ;
struct TYPE_6__ {struct nvkm_subdev subdev; } ;
struct gk20a_clk {TYPE_3__ base; } ;
struct TYPE_5__ {int (* prog ) (TYPE_3__*) ;TYPE_1__* pstates; int (* calc ) (struct nvkm_clk*,int *) ;} ;
struct TYPE_4__ {int base; } ;


 int GPC2CLK_OUT ;
 int GPC2CLK_OUT_INIT_MASK ;
 int GPC2CLK_OUT_INIT_VAL ;
 int GPCPLL_CFG ;
 int GPCPLL_CFG_IDDQ ;
 struct gk20a_clk* gk20a_clk (struct nvkm_clk*) ;
 int gk20a_clk_setup_slide (struct gk20a_clk*) ;
 int nvkm_error (struct nvkm_subdev*,char*) ;
 int nvkm_mask (struct nvkm_device*,int ,int ,int ) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;
 int stub1 (struct nvkm_clk*,int *) ;
 int stub2 (TYPE_3__*) ;
 int udelay (int) ;

__attribute__((used)) static int
gk20a_clk_init(struct nvkm_clk *base)
{
 struct gk20a_clk *clk = gk20a_clk(base);
 struct nvkm_subdev *subdev = &clk->base.subdev;
 struct nvkm_device *device = subdev->device;
 int ret;


 nvkm_mask(device, GPCPLL_CFG, GPCPLL_CFG_IDDQ, 0);
 nvkm_rd32(device, GPCPLL_CFG);
 udelay(5);

 nvkm_mask(device, GPC2CLK_OUT, GPC2CLK_OUT_INIT_MASK,
    GPC2CLK_OUT_INIT_VAL);

 ret = gk20a_clk_setup_slide(clk);
 if (ret)
  return ret;


 base->func->calc(base, &base->func->pstates[0].base);
 ret = base->func->prog(&clk->base);
 if (ret) {
  nvkm_error(subdev, "cannot initialize clock\n");
  return ret;
 }

 return 0;
}
