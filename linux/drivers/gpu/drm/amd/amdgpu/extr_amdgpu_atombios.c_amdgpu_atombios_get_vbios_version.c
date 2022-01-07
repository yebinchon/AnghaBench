
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct atom_context {char* vbios_version; } ;
struct TYPE_2__ {struct atom_context* atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t amdgpu_atombios_get_vbios_version(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;
 struct atom_context *ctx = adev->mode_info.atom_context;

 return snprintf(buf, PAGE_SIZE, "%s\n", ctx->vbios_version);
}
