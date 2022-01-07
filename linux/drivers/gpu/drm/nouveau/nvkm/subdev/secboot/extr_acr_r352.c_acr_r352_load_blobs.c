
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_secboot {scalar_t__ wpr_size; struct nvkm_subdev subdev; } ;
struct TYPE_2__ {scalar_t__ boot_falcon; } ;
struct acr_r352 {int firmware_ok; int * hsbl_blob; int * hsbl_unload_blob; TYPE_1__ base; int unload_bl_header; int unload_blob; int load_bl_header; int load_blob; } ;


 scalar_t__ IS_ERR (int *) ;
 scalar_t__ NVKM_SECBOOT_FALCON_PMU ;
 int PTR_ERR (int *) ;
 int acr_r352_prepare_hs_blob (struct acr_r352*,struct nvkm_secboot*,char*,int *,int *,int) ;
 int acr_r352_prepare_ls_blob (struct acr_r352*,struct nvkm_secboot*) ;
 void* nvkm_acr_load_firmware (struct nvkm_subdev*,char*,int ) ;
 int nvkm_debug (struct nvkm_subdev*,char*) ;

int
acr_r352_load_blobs(struct acr_r352 *acr, struct nvkm_secboot *sb)
{
 struct nvkm_subdev *subdev = &sb->subdev;
 int ret;


 if (acr->firmware_ok)
  return 0;


 ret = acr_r352_prepare_ls_blob(acr, sb);
 if (ret)
  return ret;


 if (!acr->load_blob) {
  ret = acr_r352_prepare_hs_blob(acr, sb, "acr/ucode_load",
            &acr->load_blob,
            &acr->load_bl_header, 1);
  if (ret)
   return ret;
 }


 if (sb->wpr_size == 0) {
  ret = acr_r352_prepare_hs_blob(acr, sb, "acr/ucode_unload",
            &acr->unload_blob,
            &acr->unload_bl_header, 0);
  if (ret)
   return ret;
 }


 if (!acr->hsbl_blob) {
  acr->hsbl_blob = nvkm_acr_load_firmware(subdev, "acr/bl", 0);
  if (IS_ERR(acr->hsbl_blob)) {
   ret = PTR_ERR(acr->hsbl_blob);
   acr->hsbl_blob = ((void*)0);
   return ret;
  }

  if (acr->base.boot_falcon != NVKM_SECBOOT_FALCON_PMU) {
   acr->hsbl_unload_blob = nvkm_acr_load_firmware(subdev,
           "acr/unload_bl", 0);
   if (IS_ERR(acr->hsbl_unload_blob)) {
    ret = PTR_ERR(acr->hsbl_unload_blob);
    acr->hsbl_unload_blob = ((void*)0);
    return ret;
   }
  } else {
   acr->hsbl_unload_blob = acr->hsbl_blob;
  }
 }

 acr->firmware_ok = 1;
 nvkm_debug(&sb->subdev, "LS blob successfully created\n");

 return 0;
}
