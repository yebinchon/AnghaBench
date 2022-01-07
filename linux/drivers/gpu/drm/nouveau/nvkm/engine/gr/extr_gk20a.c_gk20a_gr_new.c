
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_gr {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct gf100_gr {int fuc_method; int fuc_bundle; int fuc_sw_ctx; int fuc_sw_nonctx; int fuc41ad; int fuc41ac; int fuc409d; int fuc409c; struct nvkm_gr base; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int gf100_gr_ctor (int *,struct nvkm_device*,int,struct gf100_gr*) ;
 scalar_t__ gf100_gr_ctor_fw (struct gf100_gr*,char*,int *) ;
 int gk20a_gr ;
 int gk20a_gr_aiv_to_init (struct gf100_gr*,char*,int *) ;
 int gk20a_gr_av_to_init (struct gf100_gr*,char*,int *) ;
 int gk20a_gr_av_to_method (struct gf100_gr*,char*,int *) ;
 struct gf100_gr* kzalloc (int,int ) ;

int
gk20a_gr_new(struct nvkm_device *device, int index, struct nvkm_gr **pgr)
{
 struct gf100_gr *gr;
 int ret;

 if (!(gr = kzalloc(sizeof(*gr), GFP_KERNEL)))
  return -ENOMEM;
 *pgr = &gr->base;

 ret = gf100_gr_ctor(&gk20a_gr, device, index, gr);
 if (ret)
  return ret;

 if (gf100_gr_ctor_fw(gr, "fecs_inst", &gr->fuc409c) ||
     gf100_gr_ctor_fw(gr, "fecs_data", &gr->fuc409d) ||
     gf100_gr_ctor_fw(gr, "gpccs_inst", &gr->fuc41ac) ||
     gf100_gr_ctor_fw(gr, "gpccs_data", &gr->fuc41ad))
  return -ENODEV;

 ret = gk20a_gr_av_to_init(gr, "sw_nonctx", &gr->fuc_sw_nonctx);
 if (ret)
  return ret;

 ret = gk20a_gr_aiv_to_init(gr, "sw_ctx", &gr->fuc_sw_ctx);
 if (ret)
  return ret;

 ret = gk20a_gr_av_to_init(gr, "sw_bundle_init", &gr->fuc_bundle);
 if (ret)
  return ret;

 ret = gk20a_gr_av_to_method(gr, "sw_method_init", &gr->fuc_method);
 if (ret)
  return ret;

 return 0;
}
