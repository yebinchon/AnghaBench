
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gf100_gr_fuc {int * data; int size; } ;
struct TYPE_3__ {int subdev; } ;
struct TYPE_4__ {TYPE_1__ engine; } ;
struct gf100_gr {TYPE_2__ base; } ;
struct firmware {int data; int size; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int gf100_gr_ctor_fw_legacy (struct gf100_gr*,char const*,struct gf100_gr_fuc*,int) ;
 int * kmemdup (int ,int ,int ) ;
 int nvkm_firmware_get (int *,char const*,struct firmware const**) ;
 int nvkm_firmware_put (struct firmware const*) ;

int
gf100_gr_ctor_fw(struct gf100_gr *gr, const char *fwname,
   struct gf100_gr_fuc *fuc)
{
 const struct firmware *fw;
 int ret;

 ret = nvkm_firmware_get(&gr->base.engine.subdev, fwname, &fw);
 if (ret) {
  ret = gf100_gr_ctor_fw_legacy(gr, fwname, fuc, ret);
  if (ret)
   return -ENODEV;
  return 0;
 }

 fuc->size = fw->size;
 fuc->data = kmemdup(fw->data, fuc->size, GFP_KERNEL);
 nvkm_firmware_put(fw);
 return (fuc->data != ((void*)0)) ? 0 : -ENOMEM;
}
