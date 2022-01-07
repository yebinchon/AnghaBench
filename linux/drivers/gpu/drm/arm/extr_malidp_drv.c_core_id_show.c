
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malidp_drm {int core_id; } ;
struct drm_device {struct malidp_drm* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t core_id_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct drm_device *drm = dev_get_drvdata(dev);
 struct malidp_drm *malidp = drm->dev_private;

 return snprintf(buf, PAGE_SIZE, "%08x\n", malidp->core_id);
}
