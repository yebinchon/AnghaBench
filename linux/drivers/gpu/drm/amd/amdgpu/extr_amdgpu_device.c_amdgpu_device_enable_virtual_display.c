
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int pdev; } ;
struct TYPE_2__ {long num_crtc; } ;
struct amdgpu_device {int enable_virtual_display; TYPE_1__ mode_info; struct drm_device* ddev; } ;


 int DRM_INFO (char*,scalar_t__,char const*,int,int) ;
 int GFP_KERNEL ;
 scalar_t__ amdgpu_virtual_display ;
 int kfree (char*) ;
 char* kstrdup (scalar_t__,int ) ;
 int kstrtol (char*,int,long*) ;
 char* pci_name (int ) ;
 int strcmp (char const*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static void amdgpu_device_enable_virtual_display(struct amdgpu_device *adev)
{
 adev->enable_virtual_display = 0;

 if (amdgpu_virtual_display) {
  struct drm_device *ddev = adev->ddev;
  const char *pci_address_name = pci_name(ddev->pdev);
  char *pciaddstr, *pciaddstr_tmp, *pciaddname_tmp, *pciaddname;

  pciaddstr = kstrdup(amdgpu_virtual_display, GFP_KERNEL);
  pciaddstr_tmp = pciaddstr;
  while ((pciaddname_tmp = strsep(&pciaddstr_tmp, ";"))) {
   pciaddname = strsep(&pciaddname_tmp, ",");
   if (!strcmp("all", pciaddname)
       || !strcmp(pci_address_name, pciaddname)) {
    long num_crtc;
    int res = -1;

    adev->enable_virtual_display = 1;

    if (pciaddname_tmp)
     res = kstrtol(pciaddname_tmp, 10,
            &num_crtc);

    if (!res) {
     if (num_crtc < 1)
      num_crtc = 1;
     if (num_crtc > 6)
      num_crtc = 6;
     adev->mode_info.num_crtc = num_crtc;
    } else {
     adev->mode_info.num_crtc = 1;
    }
    break;
   }
  }

  DRM_INFO("virtual display string:%s, %s:virtual_display:%d, num_crtc:%d\n",
    amdgpu_virtual_display, pci_address_name,
    adev->enable_virtual_display, adev->mode_info.num_crtc);

  kfree(pciaddstr);
 }
}
