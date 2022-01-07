
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int name; struct exynos_nocp* driver_data; int * ops; } ;
struct exynos_nocp {int clk; int edev; TYPE_1__ desc; struct device* dev; } ;
struct device_node {int full_name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int devm_devfreq_event_add_edev (struct device*,TYPE_1__*) ;
 struct exynos_nocp* devm_kzalloc (struct device*,int,int ) ;
 int exynos_nocp_ops ;
 int exynos_nocp_parse_dt (struct platform_device*,struct exynos_nocp*) ;
 int platform_set_drvdata (struct platform_device*,struct exynos_nocp*) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int exynos_nocp_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct exynos_nocp *nocp;
 int ret;

 nocp = devm_kzalloc(&pdev->dev, sizeof(*nocp), GFP_KERNEL);
 if (!nocp)
  return -ENOMEM;

 nocp->dev = &pdev->dev;


 ret = exynos_nocp_parse_dt(pdev, nocp);
 if (ret < 0) {
  dev_err(&pdev->dev,
   "failed to parse devicetree for resource\n");
  return ret;
 }


 nocp->desc.ops = &exynos_nocp_ops;
 nocp->desc.driver_data = nocp;
 nocp->desc.name = np->full_name;
 nocp->edev = devm_devfreq_event_add_edev(&pdev->dev, &nocp->desc);
 if (IS_ERR(nocp->edev)) {
  dev_err(&pdev->dev,
   "failed to add devfreq-event device\n");
  return PTR_ERR(nocp->edev);
 }
 platform_set_drvdata(pdev, nocp);

 ret = clk_prepare_enable(nocp->clk);
 if (ret) {
  dev_err(&pdev->dev, "failed to prepare ppmu clock\n");
  return ret;
 }

 pr_info("exynos-nocp: new NoC Probe device registered: %s\n",
   dev_name(dev));

 return 0;
}
