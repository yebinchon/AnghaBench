
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct lvds_encoder {int bridge; } ;


 int drm_bridge_remove (int *) ;
 struct lvds_encoder* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int lvds_encoder_remove(struct platform_device *pdev)
{
 struct lvds_encoder *lvds_encoder = platform_get_drvdata(pdev);

 drm_bridge_remove(&lvds_encoder->bridge);

 return 0;
}
