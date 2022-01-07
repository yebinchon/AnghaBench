
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fsi_master_gpio {int master; } ;


 int dev_attr_external_mode ;
 int device_remove_file (int *,int *) ;
 int fsi_master_unregister (int *) ;
 struct fsi_master_gpio* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int fsi_master_gpio_remove(struct platform_device *pdev)
{
 struct fsi_master_gpio *master = platform_get_drvdata(pdev);

 device_remove_file(&pdev->dev, &dev_attr_external_mode);

 fsi_master_unregister(&master->master);

 return 0;
}
