
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int device_for_each_child (int *,int *,int ) ;
 int platform_remove_devices_fn ;

__attribute__((used)) static void platform_device_unregister_children(struct platform_device *pdev)
{
 device_for_each_child(&pdev->dev, ((void*)0), platform_remove_devices_fn);
}
