
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int dev_attr; } ;
struct platform_device {int dev; } ;


 int device_remove_file (int *,int *) ;

__attribute__((used)) static void f71882fg_remove_sysfs_files(struct platform_device *pdev,
 struct sensor_device_attribute_2 *attr, int count)
{
 int i;

 for (i = 0; i < count; i++)
  device_remove_file(&pdev->dev, &attr[i].dev_attr);
}
