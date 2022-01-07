
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct gk20a_clk {TYPE_2__ base; } ;


 int GPCPLL_CFG ;
 int GPCPLL_CFG_ENABLE ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;

__attribute__((used)) static inline bool
gk20a_pllg_is_enabled(struct gk20a_clk *clk)
{
 struct nvkm_device *device = clk->base.subdev.device;
 u32 val;

 val = nvkm_rd32(device, GPCPLL_CFG);
 return val & GPCPLL_CFG_ENABLE;
}
