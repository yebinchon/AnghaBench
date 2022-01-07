
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mdev_device {int dummy; } ;
struct TYPE_4__ {TYPE_3__** shadow; } ;
struct intel_vgpu {TYPE_1__ submission; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {TYPE_2__* gem_context; } ;
struct TYPE_5__ {int hw_id; } ;


 struct mdev_device* mdev_from_dev (struct device*) ;
 scalar_t__ mdev_get_drvdata (struct mdev_device*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t
hw_id_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct mdev_device *mdev = mdev_from_dev(dev);

 if (mdev) {
  struct intel_vgpu *vgpu = (struct intel_vgpu *)
   mdev_get_drvdata(mdev);
  return sprintf(buf, "%u\n",
          vgpu->submission.shadow[0]->gem_context->hw_id);
 }
 return sprintf(buf, "\n");
}
