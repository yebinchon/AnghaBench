
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {int dummy; } ;
struct exynos_dpi {int panel_node; struct videomode* vm; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int EINVAL ;
 int ENOMEM ;
 int FIMD_PORT_RGB ;
 int GFP_KERNEL ;
 int devm_kfree (struct device*,struct videomode*) ;
 struct videomode* devm_kzalloc (struct device*,int,int ) ;
 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 int of_get_videomode (struct device_node*,struct videomode*,int ) ;
 int of_graph_get_remote_node (struct device_node*,int ,int ) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int exynos_dpi_parse_dt(struct exynos_dpi *ctx)
{
 struct device *dev = ctx->dev;
 struct device_node *dn = dev->of_node;
 struct device_node *np;

 ctx->panel_node = of_graph_get_remote_node(dn, FIMD_PORT_RGB, 0);

 np = of_get_child_by_name(dn, "display-timings");
 if (np) {
  struct videomode *vm;
  int ret;

  of_node_put(np);

  vm = devm_kzalloc(dev, sizeof(*ctx->vm), GFP_KERNEL);
  if (!vm)
   return -ENOMEM;

  ret = of_get_videomode(dn, vm, 0);
  if (ret < 0) {
   devm_kfree(dev, vm);
   return ret;
  }

  ctx->vm = vm;

  return 0;
 }

 if (!ctx->panel_node)
  return -EINVAL;

 return 0;
}
