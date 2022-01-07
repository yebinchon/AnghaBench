
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct gf100_gr {int tpc_total; TYPE_4__* func; int fuc_sw_nonctx; TYPE_3__ base; } ;
struct TYPE_8__ {int (* set_hww_esr_report_mask ) (struct gf100_gr*) ;int (* init_rop_active_fbps ) (struct gf100_gr*) ;int (* init_zcull ) (struct gf100_gr*) ;int (* init_gpc_mmu ) (struct gf100_gr*) ;} ;


 int gf100_gr_init_ctxctl (struct gf100_gr*) ;
 int gf100_gr_mmio (struct gf100_gr*,int ) ;
 int gf100_gr_wait_idle (struct gf100_gr*) ;
 int gf100_gr_zbc_init (struct gf100_gr*) ;
 int gk20a_gr_wait_mem_scrubbing (struct gf100_gr*) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;
 int stub1 (struct gf100_gr*) ;
 int stub2 (struct gf100_gr*) ;
 int stub3 (struct gf100_gr*) ;
 int stub4 (struct gf100_gr*) ;

int
gk20a_gr_init(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 int ret;


 nvkm_wr32(device, 0x40802c, 0x1);

 gf100_gr_mmio(gr, gr->fuc_sw_nonctx);

 ret = gk20a_gr_wait_mem_scrubbing(gr);
 if (ret)
  return ret;

 ret = gf100_gr_wait_idle(gr);
 if (ret)
  return ret;


 if (gr->func->init_gpc_mmu)
  gr->func->init_gpc_mmu(gr);


 nvkm_mask(device, 0x503018, 0x1, 0x1);


 gr->func->init_zcull(gr);

 gr->func->init_rop_active_fbps(gr);


 nvkm_wr32(device, 0x400500, 0x00010001);


 nvkm_wr32(device, 0x400100, 0xffffffff);
 nvkm_wr32(device, 0x40013c, 0xffffffff);


 nvkm_wr32(device, 0x409c24, 0x000f0000);


 nvkm_wr32(device, 0x404000, 0xc0000000);
 nvkm_wr32(device, 0x404600, 0xc0000000);

 if (gr->func->set_hww_esr_report_mask)
  gr->func->set_hww_esr_report_mask(gr);


 nvkm_wr32(device, 0x419d0c, 0x2);
 nvkm_wr32(device, 0x41ac94, (((1 << gr->tpc_total) - 1) & 0xff) << 16);


 nvkm_wr32(device, 0x400108, 0xffffffff);
 nvkm_wr32(device, 0x400138, 0xffffffff);
 nvkm_wr32(device, 0x400118, 0xffffffff);
 nvkm_wr32(device, 0x400130, 0xffffffff);
 nvkm_wr32(device, 0x40011c, 0xffffffff);
 nvkm_wr32(device, 0x400134, 0xffffffff);

 gf100_gr_zbc_init(gr);

 return gf100_gr_init_ctxctl(gr);
}
