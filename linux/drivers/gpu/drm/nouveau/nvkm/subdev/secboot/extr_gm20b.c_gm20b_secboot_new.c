
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_secboot {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nvkm_acr {int optional_falcons; } ;
struct gm200_secboot {struct nvkm_secboot base; } ;


 int BIT (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct nvkm_acr*) ;
 int NVKM_SECBOOT_FALCON_FECS ;
 int NVKM_SECBOOT_FALCON_PMU ;
 int PTR_ERR (struct nvkm_acr*) ;
 struct nvkm_acr* acr_r352_new (int) ;
 int gm20b_secboot ;
 struct gm200_secboot* kzalloc (int,int ) ;
 int nvkm_secboot_ctor (int *,struct nvkm_acr*,struct nvkm_device*,int,struct nvkm_secboot*) ;

int
gm20b_secboot_new(struct nvkm_device *device, int index,
    struct nvkm_secboot **psb)
{
 int ret;
 struct gm200_secboot *gsb;
 struct nvkm_acr *acr;

 acr = acr_r352_new(BIT(NVKM_SECBOOT_FALCON_FECS) |
      BIT(NVKM_SECBOOT_FALCON_PMU));
 if (IS_ERR(acr))
  return PTR_ERR(acr);

 acr->optional_falcons = BIT(NVKM_SECBOOT_FALCON_PMU);

 gsb = kzalloc(sizeof(*gsb), GFP_KERNEL);
 if (!gsb) {
  psb = ((void*)0);
  return -ENOMEM;
 }
 *psb = &gsb->base;

 ret = nvkm_secboot_ctor(&gm20b_secboot, acr, device, index, &gsb->base);
 if (ret)
  return ret;

 return 0;
}
