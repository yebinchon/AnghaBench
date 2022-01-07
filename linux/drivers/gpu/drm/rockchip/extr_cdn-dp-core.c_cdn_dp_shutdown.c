
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cdn_dp_device {int dev; } ;


 int cdn_dp_suspend (int ) ;
 struct cdn_dp_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void cdn_dp_shutdown(struct platform_device *pdev)
{
 struct cdn_dp_device *dp = platform_get_drvdata(pdev);

 cdn_dp_suspend(dp->dev);
}
