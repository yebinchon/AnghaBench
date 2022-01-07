
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxad_device {int slave; } ;
struct platform_device {int dummy; } ;


 struct pxad_device* platform_get_drvdata (struct platform_device*) ;
 int pxad_cleanup_debugfs (struct pxad_device*) ;
 int pxad_free_channels (int *) ;

__attribute__((used)) static int pxad_remove(struct platform_device *op)
{
 struct pxad_device *pdev = platform_get_drvdata(op);

 pxad_cleanup_debugfs(pdev);
 pxad_free_channels(&pdev->slave);
 return 0;
}
