
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct versatile_panel {scalar_t__ ib2_map; int dev; } ;
struct drm_panel {int dummy; } ;


 int IB2_CTRL ;
 int IB2_CTRL_LCD_BL_ON ;
 int IB2_CTRL_LCD_MASK ;
 int dev_dbg (int ,char*) ;
 int regmap_update_bits (scalar_t__,int ,int ,int ) ;
 struct versatile_panel* to_versatile_panel (struct drm_panel*) ;

__attribute__((used)) static int versatile_panel_enable(struct drm_panel *panel)
{
 struct versatile_panel *vpanel = to_versatile_panel(panel);


 if (vpanel->ib2_map) {
  dev_dbg(vpanel->dev, "enable IB2 display\n");
  regmap_update_bits(vpanel->ib2_map,
       IB2_CTRL,
       IB2_CTRL_LCD_MASK,
       IB2_CTRL_LCD_BL_ON);
 }

 return 0;
}
