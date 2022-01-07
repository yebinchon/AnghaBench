
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ls037v7dw01_panel {int vdd; } ;
struct drm_panel {int dummy; } ;


 int regulator_disable (int ) ;
 struct ls037v7dw01_panel* to_ls037v7dw01_device (struct drm_panel*) ;

__attribute__((used)) static int ls037v7dw01_unprepare(struct drm_panel *panel)
{
 struct ls037v7dw01_panel *lcd = to_ls037v7dw01_device(panel);

 regulator_disable(lcd->vdd);
 return 0;
}
