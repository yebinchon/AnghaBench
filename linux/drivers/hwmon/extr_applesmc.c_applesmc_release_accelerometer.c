
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int has_accelerometer; } ;


 int accelerometer_group ;
 int applesmc_destroy_nodes (int ) ;
 int applesmc_idev ;
 int input_free_polled_device (int ) ;
 int input_unregister_polled_device (int ) ;
 TYPE_1__ smcreg ;

__attribute__((used)) static void applesmc_release_accelerometer(void)
{
 if (!smcreg.has_accelerometer)
  return;
 input_unregister_polled_device(applesmc_idev);
 input_free_polled_device(applesmc_idev);
 applesmc_destroy_nodes(accelerometer_group);
}
