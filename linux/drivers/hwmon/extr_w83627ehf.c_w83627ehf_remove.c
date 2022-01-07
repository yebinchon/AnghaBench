
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627ehf_data {int addr; int hwmon_dev; } ;
struct platform_device {int dev; } ;


 int IOREGION_LENGTH ;
 int hwmon_device_unregister (int ) ;
 struct w83627ehf_data* platform_get_drvdata (struct platform_device*) ;
 int release_region (int ,int ) ;
 int w83627ehf_device_remove_files (int *) ;

__attribute__((used)) static int w83627ehf_remove(struct platform_device *pdev)
{
 struct w83627ehf_data *data = platform_get_drvdata(pdev);

 hwmon_device_unregister(data->hwmon_dev);
 w83627ehf_device_remove_files(&pdev->dev);
 release_region(data->addr, IOREGION_LENGTH);

 return 0;
}
