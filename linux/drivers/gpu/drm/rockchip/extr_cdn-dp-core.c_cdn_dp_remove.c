
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct cdn_dp_device {int dev; int audio_pdev; } ;


 int cdn_dp_component_ops ;
 int cdn_dp_suspend (int ) ;
 int component_del (int *,int *) ;
 int platform_device_unregister (int ) ;
 struct cdn_dp_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int cdn_dp_remove(struct platform_device *pdev)
{
 struct cdn_dp_device *dp = platform_get_drvdata(pdev);

 platform_device_unregister(dp->audio_pdev);
 cdn_dp_suspend(dp->dev);
 component_del(&pdev->dev, &cdn_dp_component_ops);

 return 0;
}
