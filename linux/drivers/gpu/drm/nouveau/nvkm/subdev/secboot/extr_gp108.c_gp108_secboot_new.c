
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_secboot {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nvkm_acr {TYPE_1__* func; } ;
struct gm200_secboot {struct nvkm_secboot base; } ;
struct TYPE_2__ {int (* dtor ) (struct nvkm_acr*) ;} ;


 int BIT (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct nvkm_acr*) ;
 int NVKM_SECBOOT_FALCON_FECS ;
 int NVKM_SECBOOT_FALCON_GPCCS ;
 int NVKM_SECBOOT_FALCON_SEC2 ;
 int PTR_ERR (struct nvkm_acr*) ;
 struct nvkm_acr* acr_r370_new (int ,int) ;
 int gp102_secboot ;
 struct gm200_secboot* kzalloc (int,int ) ;
 int nvkm_secboot_ctor (int *,struct nvkm_acr*,struct nvkm_device*,int,struct nvkm_secboot*) ;
 int stub1 (struct nvkm_acr*) ;

int
gp108_secboot_new(struct nvkm_device *device, int index,
    struct nvkm_secboot **psb)
{
 struct gm200_secboot *gsb;
 struct nvkm_acr *acr;

 acr = acr_r370_new(NVKM_SECBOOT_FALCON_SEC2,
      BIT(NVKM_SECBOOT_FALCON_FECS) |
      BIT(NVKM_SECBOOT_FALCON_GPCCS) |
      BIT(NVKM_SECBOOT_FALCON_SEC2));
 if (IS_ERR(acr))
  return PTR_ERR(acr);

 if (!(gsb = kzalloc(sizeof(*gsb), GFP_KERNEL))) {
  acr->func->dtor(acr);
  return -ENOMEM;
 }
 *psb = &gsb->base;

 return nvkm_secboot_ctor(&gp102_secboot, acr, device, index, &gsb->base);
}
