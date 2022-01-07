
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct intel_th_device {scalar_t__ id; int name; } ;
struct intel_th {int id; } ;
struct device {int dummy; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int GFP_KERNEL ;
 char* kasprintf (int ,char*,int ,int ,...) ;
 struct intel_th* to_intel_th (struct intel_th_device*) ;
 struct intel_th_device* to_intel_th_device (struct device*) ;

__attribute__((used)) static char *intel_th_output_devnode(struct device *dev, umode_t *mode,
         kuid_t *uid, kgid_t *gid)
{
 struct intel_th_device *thdev = to_intel_th_device(dev);
 struct intel_th *th = to_intel_th(thdev);
 char *node;

 if (thdev->id >= 0)
  node = kasprintf(GFP_KERNEL, "intel_th%d/%s%d", th->id,
     thdev->name, thdev->id);
 else
  node = kasprintf(GFP_KERNEL, "intel_th%d/%s", th->id,
     thdev->name);

 return node;
}
