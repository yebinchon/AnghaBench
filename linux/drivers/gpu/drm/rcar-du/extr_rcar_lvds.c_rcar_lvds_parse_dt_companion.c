
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_lvds {int companion; struct device* dev; } ;
struct of_device_id {int compatible; } ;
struct device_node {int dummy; } ;
struct device {TYPE_1__* driver; int of_node; } ;
struct TYPE_2__ {int of_match_table; } ;


 int ENXIO ;
 int EPROBE_DEFER ;
 int dev_dbg (struct device*,char*,struct device_node*) ;
 int dev_err (struct device*,char*) ;
 int of_device_is_compatible (struct device_node*,int ) ;
 int of_drm_find_bridge (struct device_node*) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;

__attribute__((used)) static int rcar_lvds_parse_dt_companion(struct rcar_lvds *lvds)
{
 const struct of_device_id *match;
 struct device_node *companion;
 struct device *dev = lvds->dev;
 int ret = 0;


 companion = of_parse_phandle(dev->of_node, "renesas,companion", 0);
 if (!companion)
  return 0;





 match = of_match_device(dev->driver->of_match_table, dev);
 if (!of_device_is_compatible(companion, match->compatible)) {
  dev_err(dev, "Companion LVDS encoder is invalid\n");
  ret = -ENXIO;
  goto done;
 }

 lvds->companion = of_drm_find_bridge(companion);
 if (!lvds->companion) {
  ret = -EPROBE_DEFER;
  goto done;
 }

 dev_dbg(dev, "Found companion encoder %pOF\n", companion);

done:
 of_node_put(companion);

 return ret;
}
