
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_th_device {struct intel_th_device* resource; } ;


 int kfree (struct intel_th_device*) ;

__attribute__((used)) static void intel_th_device_free(struct intel_th_device *thdev)
{
 kfree(thdev->resource);
 kfree(thdev);
}
