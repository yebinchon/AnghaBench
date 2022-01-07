
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct fsi_master_acf {int master; int dev; } ;


 int dev_attr_external_mode ;
 int device_remove_file (int ,int *) ;
 int fsi_master_unregister (int *) ;
 struct fsi_master_acf* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int fsi_master_acf_remove(struct platform_device *pdev)
{
 struct fsi_master_acf *master = platform_get_drvdata(pdev);

 device_remove_file(master->dev, &dev_attr_external_mode);

 fsi_master_unregister(&master->master);

 return 0;
}
