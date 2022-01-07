
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct pc87427_data {int hwmon_dev; } ;


 int hwmon_device_unregister (int ) ;
 int pc87427_remove_files (int *) ;
 struct pc87427_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pc87427_remove(struct platform_device *pdev)
{
 struct pc87427_data *data = platform_get_drvdata(pdev);

 hwmon_device_unregister(data->hwmon_dev);
 pc87427_remove_files(&pdev->dev);

 return 0;
}
