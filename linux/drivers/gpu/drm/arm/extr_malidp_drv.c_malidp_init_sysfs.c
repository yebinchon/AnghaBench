
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int dev_attr_core_id ;
 int device_create_file (struct device*,int *) ;

__attribute__((used)) static int malidp_init_sysfs(struct device *dev)
{
 int ret = device_create_file(dev, &dev_attr_core_id);

 if (ret)
  DRM_ERROR("failed to create device file for core_id\n");

 return ret;
}
