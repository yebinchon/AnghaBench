
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_gr {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct gf100_gr_func {int dummy; } ;
struct gf100_gr {int fuc41ad; int fuc41ac; int fuc409d; int fuc409c; scalar_t__ firmware; struct nvkm_gr base; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int gf100_gr_ctor (struct gf100_gr_func const*,struct nvkm_device*,int,struct gf100_gr*) ;
 scalar_t__ gf100_gr_ctor_fw (struct gf100_gr*,char*,int *) ;
 struct gf100_gr* kzalloc (int,int ) ;

int
gf100_gr_new_(const struct gf100_gr_func *func, struct nvkm_device *device,
       int index, struct nvkm_gr **pgr)
{
 struct gf100_gr *gr;
 int ret;

 if (!(gr = kzalloc(sizeof(*gr), GFP_KERNEL)))
  return -ENOMEM;
 *pgr = &gr->base;

 ret = gf100_gr_ctor(func, device, index, gr);
 if (ret)
  return ret;

 if (gr->firmware) {
  if (gf100_gr_ctor_fw(gr, "fecs_inst", &gr->fuc409c) ||
      gf100_gr_ctor_fw(gr, "fecs_data", &gr->fuc409d) ||
      gf100_gr_ctor_fw(gr, "gpccs_inst", &gr->fuc41ac) ||
      gf100_gr_ctor_fw(gr, "gpccs_data", &gr->fuc41ad))
   return -ENODEV;
 }

 return 0;
}
