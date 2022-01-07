
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpi_hwmon_data {int get_values_poll_work; } ;
struct platform_device {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 struct rpi_hwmon_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int rpi_hwmon_remove(struct platform_device *pdev)
{
 struct rpi_hwmon_data *data = platform_get_drvdata(pdev);

 cancel_delayed_work_sync(&data->get_values_poll_work);

 return 0;
}
