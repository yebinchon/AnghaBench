
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hdmi {int phy_dev; int phy; struct platform_device* pdev; } ;
struct device_node {int dummy; } ;


 int DRM_DEV_ERROR (TYPE_1__*,char*) ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int get_device (TYPE_1__*) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int msm_hdmi_get_phy(struct hdmi *hdmi)
{
 struct platform_device *pdev = hdmi->pdev;
 struct platform_device *phy_pdev;
 struct device_node *phy_node;

 phy_node = of_parse_phandle(pdev->dev.of_node, "phys", 0);
 if (!phy_node) {
  DRM_DEV_ERROR(&pdev->dev, "cannot find phy device\n");
  return -ENXIO;
 }

 phy_pdev = of_find_device_by_node(phy_node);
 if (phy_pdev)
  hdmi->phy = platform_get_drvdata(phy_pdev);

 of_node_put(phy_node);

 if (!phy_pdev || !hdmi->phy) {
  DRM_DEV_ERROR(&pdev->dev, "phy driver is not ready\n");
  return -EPROBE_DEFER;
 }

 hdmi->phy_dev = get_device(&phy_pdev->dev);

 return 0;
}
