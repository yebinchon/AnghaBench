
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_device {int dummy; } ;
struct intel_vgpu {int id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct mdev_device* mdev_from_dev (struct device*) ;
 scalar_t__ mdev_get_drvdata (struct mdev_device*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t
vgpu_id_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct mdev_device *mdev = mdev_from_dev(dev);

 if (mdev) {
  struct intel_vgpu *vgpu = (struct intel_vgpu *)
   mdev_get_drvdata(mdev);
  return sprintf(buf, "%d\n", vgpu->id);
 }
 return sprintf(buf, "\n");
}
