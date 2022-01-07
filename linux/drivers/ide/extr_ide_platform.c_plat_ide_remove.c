
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ide_host {int dummy; } ;


 struct ide_host* dev_get_drvdata (int *) ;
 int ide_host_remove (struct ide_host*) ;

__attribute__((used)) static int plat_ide_remove(struct platform_device *pdev)
{
 struct ide_host *host = dev_get_drvdata(&pdev->dev);

 ide_host_remove(host);

 return 0;
}
