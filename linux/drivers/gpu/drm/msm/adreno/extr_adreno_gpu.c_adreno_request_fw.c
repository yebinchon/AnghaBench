
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firmware {int dummy; } ;
struct drm_device {int dev; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct adreno_gpu {scalar_t__ fwloc; TYPE_1__ base; } ;


 int DRM_DEV_ERROR (int ,char*,char const*,...) ;
 int DRM_DEV_INFO (int ,char*,char*) ;
 int ENOENT ;
 int ENOMEM ;
 struct firmware const* ERR_PTR (int) ;
 scalar_t__ FW_LOCATION_HELPER ;
 scalar_t__ FW_LOCATION_LEGACY ;
 scalar_t__ FW_LOCATION_NEW ;
 scalar_t__ FW_LOCATION_UNKNOWN ;
 int GFP_KERNEL ;
 char* kasprintf (int ,char*,char const*) ;
 int kfree (char*) ;
 int request_firmware (struct firmware const**,char*,int ) ;
 int request_firmware_direct (struct firmware const**,char const*,int ) ;

const struct firmware *
adreno_request_fw(struct adreno_gpu *adreno_gpu, const char *fwname)
{
 struct drm_device *drm = adreno_gpu->base.dev;
 const struct firmware *fw = ((void*)0);
 char *newname;
 int ret;

 newname = kasprintf(GFP_KERNEL, "qcom/%s", fwname);
 if (!newname)
  return ERR_PTR(-ENOMEM);





 if ((adreno_gpu->fwloc == FW_LOCATION_UNKNOWN) ||
     (adreno_gpu->fwloc == FW_LOCATION_NEW)) {

  ret = request_firmware_direct(&fw, newname, drm->dev);
  if (!ret) {
   DRM_DEV_INFO(drm->dev, "loaded %s from new location\n",
    newname);
   adreno_gpu->fwloc = FW_LOCATION_NEW;
   goto out;
  } else if (adreno_gpu->fwloc != FW_LOCATION_UNKNOWN) {
   DRM_DEV_ERROR(drm->dev, "failed to load %s: %d\n",
    newname, ret);
   fw = ERR_PTR(ret);
   goto out;
  }
 }




 if ((adreno_gpu->fwloc == FW_LOCATION_UNKNOWN) ||
     (adreno_gpu->fwloc == FW_LOCATION_LEGACY)) {

  ret = request_firmware_direct(&fw, fwname, drm->dev);
  if (!ret) {
   DRM_DEV_INFO(drm->dev, "loaded %s from legacy location\n",
    newname);
   adreno_gpu->fwloc = FW_LOCATION_LEGACY;
   goto out;
  } else if (adreno_gpu->fwloc != FW_LOCATION_UNKNOWN) {
   DRM_DEV_ERROR(drm->dev, "failed to load %s: %d\n",
    fwname, ret);
   fw = ERR_PTR(ret);
   goto out;
  }
 }





 if ((adreno_gpu->fwloc == FW_LOCATION_UNKNOWN) ||
     (adreno_gpu->fwloc == FW_LOCATION_HELPER)) {

  ret = request_firmware(&fw, newname, drm->dev);
  if (!ret) {
   DRM_DEV_INFO(drm->dev, "loaded %s with helper\n",
    newname);
   adreno_gpu->fwloc = FW_LOCATION_HELPER;
   goto out;
  } else if (adreno_gpu->fwloc != FW_LOCATION_UNKNOWN) {
   DRM_DEV_ERROR(drm->dev, "failed to load %s: %d\n",
    newname, ret);
   fw = ERR_PTR(ret);
   goto out;
  }
 }

 DRM_DEV_ERROR(drm->dev, "failed to load %s\n", fwname);
 fw = ERR_PTR(-ENOENT);
out:
 kfree(newname);
 return fw;
}
