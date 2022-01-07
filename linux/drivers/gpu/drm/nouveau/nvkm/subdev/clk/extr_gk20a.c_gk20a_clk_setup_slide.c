
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct gk20a_clk {int parent_rate; TYPE_1__ base; } ;


 int EINVAL ;
 int GPCPLL_CFG2 ;
 int GPCPLL_CFG2_PLL_STEPA_SHIFT ;
 int GPCPLL_CFG3 ;
 int GPCPLL_CFG3_PLL_STEPB_SHIFT ;
 int KHZ ;
 int nvkm_error (struct nvkm_subdev*,char*,int) ;
 int nvkm_mask (struct nvkm_device*,int ,int,int) ;

int
gk20a_clk_setup_slide(struct gk20a_clk *clk)
{
 struct nvkm_subdev *subdev = &clk->base.subdev;
 struct nvkm_device *device = subdev->device;
 u32 step_a, step_b;

 switch (clk->parent_rate) {
 case 12000000:
 case 12800000:
 case 13000000:
  step_a = 0x2b;
  step_b = 0x0b;
  break;
 case 19200000:
  step_a = 0x12;
  step_b = 0x08;
  break;
 case 38400000:
  step_a = 0x04;
  step_b = 0x05;
  break;
 default:
  nvkm_error(subdev, "invalid parent clock rate %u KHz",
      clk->parent_rate / KHZ);
  return -EINVAL;
 }

 nvkm_mask(device, GPCPLL_CFG2, 0xff << GPCPLL_CFG2_PLL_STEPA_SHIFT,
  step_a << GPCPLL_CFG2_PLL_STEPA_SHIFT);
 nvkm_mask(device, GPCPLL_CFG3, 0xff << GPCPLL_CFG3_PLL_STEPB_SHIFT,
  step_b << GPCPLL_CFG3_PLL_STEPB_SHIFT);

 return 0;
}
