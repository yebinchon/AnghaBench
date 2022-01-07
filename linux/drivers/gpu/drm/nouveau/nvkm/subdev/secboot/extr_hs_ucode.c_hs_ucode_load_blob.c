
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_falcon {int dummy; } ;


 int EINVAL ;
 void* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (void*) ;
 int hs_ucode_patch_signature (struct nvkm_falcon const*,void*,int) ;
 void* nvkm_acr_load_firmware (struct nvkm_subdev*,char const*,int ) ;
 int nvkm_error (struct nvkm_subdev*,char*,char const*) ;

void *
hs_ucode_load_blob(struct nvkm_subdev *subdev, const struct nvkm_falcon *falcon,
     const char *fw)
{
 void *acr_image;
 bool new_format;

 acr_image = nvkm_acr_load_firmware(subdev, fw, 0);
 if (IS_ERR(acr_image))
  return acr_image;


 switch (((u32 *)acr_image)[0]) {
 case 0x3b1d14f0:
  new_format = 1;
  break;
 case 0x000010de:
  new_format = 0;
  break;
 default:
  nvkm_error(subdev, "unknown header for HS blob %s\n", fw);
  return ERR_PTR(-EINVAL);
 }

 hs_ucode_patch_signature(falcon, acr_image, new_format);

 return acr_image;
}
