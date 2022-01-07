
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct hsi_controller {int dummy; } ;


 int device_for_each_child (int *,int *,int ) ;
 struct hsi_controller* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int pm_runtime_disable (int *) ;
 int ssi_debug_remove_ctrl (struct hsi_controller*) ;
 int ssi_remove_controller (struct hsi_controller*) ;
 int ssi_remove_ports ;

__attribute__((used)) static int ssi_remove(struct platform_device *pd)
{
 struct hsi_controller *ssi = platform_get_drvdata(pd);


 device_for_each_child(&pd->dev, ((void*)0), ssi_remove_ports);




 ssi_remove_controller(ssi);
 platform_set_drvdata(pd, ((void*)0));

 pm_runtime_disable(&pd->dev);

 return 0;
}
