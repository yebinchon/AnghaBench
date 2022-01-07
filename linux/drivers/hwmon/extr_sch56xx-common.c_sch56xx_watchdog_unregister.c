
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sch56xx_watchdog_data {int wddev; } ;


 int kfree (struct sch56xx_watchdog_data*) ;
 int watchdog_unregister_device (int *) ;

void sch56xx_watchdog_unregister(struct sch56xx_watchdog_data *data)
{
 watchdog_unregister_device(&data->wddev);
 kfree(data);
}
