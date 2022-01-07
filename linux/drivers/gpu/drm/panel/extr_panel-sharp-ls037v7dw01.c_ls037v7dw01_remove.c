
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ls037v7dw01_panel {int panel; } ;


 int drm_panel_disable (int *) ;
 int drm_panel_remove (int *) ;
 int drm_panel_unprepare (int *) ;
 struct ls037v7dw01_panel* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ls037v7dw01_remove(struct platform_device *pdev)
{
 struct ls037v7dw01_panel *lcd = platform_get_drvdata(pdev);

 drm_panel_remove(&lcd->panel);
 drm_panel_disable(&lcd->panel);
 drm_panel_unprepare(&lcd->panel);

 return 0;
}
