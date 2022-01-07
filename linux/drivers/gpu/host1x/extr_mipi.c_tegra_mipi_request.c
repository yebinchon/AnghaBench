
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_mipi_device {int pdev; struct device* device; int pads; int mipi; } ;
struct of_phandle_args {int np; int * args; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 struct tegra_mipi_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct tegra_mipi_device*) ;
 struct tegra_mipi_device* kzalloc (int,int ) ;
 int of_find_device_by_node (int ) ;
 int of_node_put (int ) ;
 int of_parse_phandle_with_args (struct device_node*,char*,char*,int ,struct of_phandle_args*) ;
 int platform_device_put (int ) ;
 int platform_get_drvdata (int ) ;

struct tegra_mipi_device *tegra_mipi_request(struct device *device)
{
 struct device_node *np = device->of_node;
 struct tegra_mipi_device *dev;
 struct of_phandle_args args;
 int err;

 err = of_parse_phandle_with_args(np, "nvidia,mipi-calibrate",
      "#nvidia,mipi-calibrate-cells", 0,
      &args);
 if (err < 0)
  return ERR_PTR(err);

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  err = -ENOMEM;
  goto out;
 }

 dev->pdev = of_find_device_by_node(args.np);
 if (!dev->pdev) {
  err = -ENODEV;
  goto free;
 }

 dev->mipi = platform_get_drvdata(dev->pdev);
 if (!dev->mipi) {
  err = -EPROBE_DEFER;
  goto put;
 }

 of_node_put(args.np);

 dev->pads = args.args[0];
 dev->device = device;

 return dev;

put:
 platform_device_put(dev->pdev);
free:
 kfree(dev);
out:
 of_node_put(args.np);
 return ERR_PTR(err);
}
