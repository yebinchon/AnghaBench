
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sun4i_tcon_quirks {scalar_t__ has_channel_0; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct drm_panel {int dummy; } ;
struct drm_bridge {int dummy; } ;
struct device_node {int dummy; } ;


 int EPROBE_DEFER ;
 int component_add (TYPE_1__*,int *) ;
 int drm_of_find_panel_or_bridge (struct device_node*,int,int ,struct drm_panel**,struct drm_bridge**) ;
 struct sun4i_tcon_quirks* of_device_get_match_data (TYPE_1__*) ;
 int sun4i_tcon_ops ;

__attribute__((used)) static int sun4i_tcon_probe(struct platform_device *pdev)
{
 struct device_node *node = pdev->dev.of_node;
 const struct sun4i_tcon_quirks *quirks;
 struct drm_bridge *bridge;
 struct drm_panel *panel;
 int ret;

 quirks = of_device_get_match_data(&pdev->dev);


 if (quirks->has_channel_0) {
  ret = drm_of_find_panel_or_bridge(node, 1, 0, &panel, &bridge);
  if (ret == -EPROBE_DEFER)
   return ret;
 }

 return component_add(&pdev->dev, &sun4i_tcon_ops);
}
