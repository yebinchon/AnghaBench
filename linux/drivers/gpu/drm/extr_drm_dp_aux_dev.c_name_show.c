
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_dp_aux_dev {int refcount; TYPE_1__* aux; } ;
struct device_attribute {int dummy; } ;
struct device {int devt; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int ENODEV ;
 int MINOR (int ) ;
 struct drm_dp_aux_dev* drm_dp_aux_dev_get_by_minor (int ) ;
 int kref_put (int *,int ) ;
 int release_drm_dp_aux_dev ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t name_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 ssize_t res;
 struct drm_dp_aux_dev *aux_dev =
  drm_dp_aux_dev_get_by_minor(MINOR(dev->devt));

 if (!aux_dev)
  return -ENODEV;

 res = sprintf(buf, "%s\n", aux_dev->aux->name);
 kref_put(&aux_dev->refcount, release_drm_dp_aux_dev);

 return res;
}
