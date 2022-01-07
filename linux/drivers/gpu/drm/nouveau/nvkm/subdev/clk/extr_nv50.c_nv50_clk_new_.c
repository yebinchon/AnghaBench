
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_device {int chipset; } ;
struct nvkm_clk_func {int dummy; } ;
struct nvkm_clk {int dummy; } ;
struct TYPE_2__ {void* r_mast; void* r_divs; void** r_nvpll; void** r_spll; void* r_fifo; } ;
struct nv50_clk {TYPE_1__ hwsq; struct nvkm_clk base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* hwsq_reg (int) ;
 struct nv50_clk* kzalloc (int,int ) ;
 int nvkm_clk_ctor (struct nvkm_clk_func const*,struct nvkm_device*,int,int,struct nvkm_clk*) ;

int
nv50_clk_new_(const struct nvkm_clk_func *func, struct nvkm_device *device,
       int index, bool allow_reclock, struct nvkm_clk **pclk)
{
 struct nv50_clk *clk;
 int ret;

 if (!(clk = kzalloc(sizeof(*clk), GFP_KERNEL)))
  return -ENOMEM;
 ret = nvkm_clk_ctor(func, device, index, allow_reclock, &clk->base);
 *pclk = &clk->base;
 if (ret)
  return ret;

 clk->hwsq.r_fifo = hwsq_reg(0x002504);
 clk->hwsq.r_spll[0] = hwsq_reg(0x004020);
 clk->hwsq.r_spll[1] = hwsq_reg(0x004024);
 clk->hwsq.r_nvpll[0] = hwsq_reg(0x004028);
 clk->hwsq.r_nvpll[1] = hwsq_reg(0x00402c);
 switch (device->chipset) {
 case 0x92:
 case 0x94:
 case 0x96:
  clk->hwsq.r_divs = hwsq_reg(0x004800);
  break;
 default:
  clk->hwsq.r_divs = hwsq_reg(0x004700);
  break;
 }
 clk->hwsq.r_mast = hwsq_reg(0x00c040);
 return 0;
}
