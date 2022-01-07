
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int dev_attr; } ;
struct i5k_amb_data {int num_attrs; int amb_len; int amb_base; int amb_mmio; struct i5k_amb_data* attrs; TYPE_1__ s_attr; int hwmon_dev; } ;


 int dev_attr_name ;
 int device_remove_file (int *,int *) ;
 int hwmon_device_unregister (int ) ;
 int iounmap (int ) ;
 int kfree (struct i5k_amb_data*) ;
 struct i5k_amb_data* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static int i5k_amb_remove(struct platform_device *pdev)
{
 int i;
 struct i5k_amb_data *data = platform_get_drvdata(pdev);

 hwmon_device_unregister(data->hwmon_dev);
 device_remove_file(&pdev->dev, &dev_attr_name);
 for (i = 0; i < data->num_attrs; i++)
  device_remove_file(&pdev->dev, &data->attrs[i].s_attr.dev_attr);
 kfree(data->attrs);
 iounmap(data->amb_mmio);
 release_mem_region(data->amb_base, data->amb_len);
 kfree(data);
 return 0;
}
