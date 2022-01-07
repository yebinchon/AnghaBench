
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_secboot {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nvkm_acr {int dummy; } ;
struct gm200_secboot {struct nvkm_secboot base; } ;


 int BIT (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct nvkm_acr*) ;
 int NVKM_SECBOOT_FALCON_FECS ;
 int NVKM_SECBOOT_FALCON_GPCCS ;
 int NVKM_SECBOOT_FALCON_SEC2 ;
 int PTR_ERR (struct nvkm_acr*) ;
 struct nvkm_acr* acr_r367_new (int ,int) ;
 int gp102_secboot ;
 struct gm200_secboot* kzalloc (int,int ) ;
 int nvkm_secboot_ctor (int *,struct nvkm_acr*,struct nvkm_device*,int,struct nvkm_secboot*) ;

int
gp102_secboot_new(struct nvkm_device *device, int index,
    struct nvkm_secboot **psb)
{
 int ret;
 struct gm200_secboot *gsb;
 struct nvkm_acr *acr;

 acr = acr_r367_new(NVKM_SECBOOT_FALCON_SEC2,
      BIT(NVKM_SECBOOT_FALCON_FECS) |
      BIT(NVKM_SECBOOT_FALCON_GPCCS) |
      BIT(NVKM_SECBOOT_FALCON_SEC2));
 if (IS_ERR(acr))
  return PTR_ERR(acr);

 gsb = kzalloc(sizeof(*gsb), GFP_KERNEL);
 if (!gsb) {
  psb = ((void*)0);
  return -ENOMEM;
 }
 *psb = &gsb->base;

 ret = nvkm_secboot_ctor(&gp102_secboot, acr, device, index, &gsb->base);
 if (ret)
  return ret;

 return 0;
}
