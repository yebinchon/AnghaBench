
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct phy {int dummy; } ;
struct of_device_id {scalar_t__ data; } ;
typedef struct phy extcon_dev ;
struct cdn_dp_port {int id; struct cdn_dp_device* dp; struct phy* phy; struct phy* extcon; } ;
struct cdn_dp_device {int lock; int ports; struct cdn_dp_port** port; struct device* dev; } ;
struct cdn_dp_data {int max_phy; } ;


 int DRM_DEV_ERROR (struct device*,char*) ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct phy*) ;
 int PTR_ERR (struct phy*) ;
 int cdn_dp_audio_codec_init (struct cdn_dp_device*,struct device*) ;
 int cdn_dp_component_ops ;
 int cdn_dp_dt_ids ;
 int component_add (struct device*,int *) ;
 int dev_set_drvdata (struct device*,struct cdn_dp_device*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 struct phy* devm_of_phy_get_by_index (struct device*,int ,int) ;
 struct phy* extcon_get_edev_by_phandle (struct device*,int) ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_node (int ,int ) ;

__attribute__((used)) static int cdn_dp_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 const struct of_device_id *match;
 struct cdn_dp_data *dp_data;
 struct cdn_dp_port *port;
 struct cdn_dp_device *dp;
 struct extcon_dev *extcon;
 struct phy *phy;
 int i;

 dp = devm_kzalloc(dev, sizeof(*dp), GFP_KERNEL);
 if (!dp)
  return -ENOMEM;
 dp->dev = dev;

 match = of_match_node(cdn_dp_dt_ids, pdev->dev.of_node);
 dp_data = (struct cdn_dp_data *)match->data;

 for (i = 0; i < dp_data->max_phy; i++) {
  extcon = extcon_get_edev_by_phandle(dev, i);
  phy = devm_of_phy_get_by_index(dev, dev->of_node, i);

  if (PTR_ERR(extcon) == -EPROBE_DEFER ||
      PTR_ERR(phy) == -EPROBE_DEFER)
   return -EPROBE_DEFER;

  if (IS_ERR(extcon) || IS_ERR(phy))
   continue;

  port = devm_kzalloc(dev, sizeof(*port), GFP_KERNEL);
  if (!port)
   return -ENOMEM;

  port->extcon = extcon;
  port->phy = phy;
  port->dp = dp;
  port->id = i;
  dp->port[dp->ports++] = port;
 }

 if (!dp->ports) {
  DRM_DEV_ERROR(dev, "missing extcon or phy\n");
  return -EINVAL;
 }

 mutex_init(&dp->lock);
 dev_set_drvdata(dev, dp);

 cdn_dp_audio_codec_init(dp, dev);

 return component_add(dev, &cdn_dp_component_ops);
}
