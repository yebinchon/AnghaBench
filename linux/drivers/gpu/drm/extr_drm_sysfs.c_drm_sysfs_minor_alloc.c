
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_minor {scalar_t__ type; int index; TYPE_1__* dev; } ;
struct device {int release; int parent; int * type; int class; int devt; } ;
struct TYPE_2__ {int dev; } ;


 int DRM_MAJOR ;
 scalar_t__ DRM_MINOR_RENDER ;
 int ENOMEM ;
 struct device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MKDEV (int ,int ) ;
 int dev_set_drvdata (struct device*,struct drm_minor*) ;
 int dev_set_name (struct device*,char const*,int ) ;
 int device_initialize (struct device*) ;
 int drm_class ;
 int drm_sysfs_device_minor ;
 int drm_sysfs_release ;
 struct device* kzalloc (int,int ) ;
 int put_device (struct device*) ;

struct device *drm_sysfs_minor_alloc(struct drm_minor *minor)
{
 const char *minor_str;
 struct device *kdev;
 int r;

 if (minor->type == DRM_MINOR_RENDER)
  minor_str = "renderD%d";
 else
  minor_str = "card%d";

 kdev = kzalloc(sizeof(*kdev), GFP_KERNEL);
 if (!kdev)
  return ERR_PTR(-ENOMEM);

 device_initialize(kdev);
 kdev->devt = MKDEV(DRM_MAJOR, minor->index);
 kdev->class = drm_class;
 kdev->type = &drm_sysfs_device_minor;
 kdev->parent = minor->dev->dev;
 kdev->release = drm_sysfs_release;
 dev_set_drvdata(kdev, minor);

 r = dev_set_name(kdev, minor_str, minor->index);
 if (r < 0)
  goto err_free;

 return kdev;

err_free:
 put_device(kdev);
 return ERR_PTR(r);
}
