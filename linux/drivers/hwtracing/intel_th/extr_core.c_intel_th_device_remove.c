
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_th_device {int dev; } ;


 int device_del (int *) ;
 int put_device (int *) ;

__attribute__((used)) static void intel_th_device_remove(struct intel_th_device *thdev)
{
 device_del(&thdev->dev);
 put_device(&thdev->dev);
}
