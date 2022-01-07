
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct tegra_windowgroup {unsigned int index; struct clk* rst; scalar_t__ usecount; int lock; } ;
struct TYPE_13__ {TYPE_1__* dev; int * ops; int list; } ;
struct tegra_display_hub {unsigned int num_heads; TYPE_4__ client; struct clk* rst; struct clk** clk_heads; struct tegra_windowgroup* wgrps; TYPE_2__* soc; struct clk* clk_hub; struct clk* clk_dsc; struct clk* clk_disp; } ;
struct TYPE_11__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;
typedef int id ;
typedef int clk ;
struct TYPE_12__ {unsigned int num_wgrps; scalar_t__ supports_dsc; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int dev_err (TYPE_1__*,char*,int) ;
 void* devm_clk_get (TYPE_1__*,char*) ;
 struct clk* devm_get_clk_from_child (TYPE_1__*,struct device_node*,char*) ;
 void* devm_kcalloc (TYPE_1__*,unsigned int,int,int ) ;
 struct tegra_display_hub* devm_kzalloc (TYPE_1__*,int,int ) ;
 void* devm_reset_control_get (TYPE_1__*,char*) ;
 int host1x_client_register (TYPE_4__*) ;
 int mutex_init (int *) ;
 TYPE_2__* of_device_get_match_data (TYPE_1__*) ;
 unsigned int of_get_child_count (int ) ;
 struct device_node* of_get_next_child (int ,struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_display_hub*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int reset_control_assert (struct clk*) ;
 int snprintf (char*,int,char*,unsigned int) ;
 int tegra_display_hub_ops ;

__attribute__((used)) static int tegra_display_hub_probe(struct platform_device *pdev)
{
 struct device_node *child = ((void*)0);
 struct tegra_display_hub *hub;
 struct clk *clk;
 unsigned int i;
 int err;

 hub = devm_kzalloc(&pdev->dev, sizeof(*hub), GFP_KERNEL);
 if (!hub)
  return -ENOMEM;

 hub->soc = of_device_get_match_data(&pdev->dev);

 hub->clk_disp = devm_clk_get(&pdev->dev, "disp");
 if (IS_ERR(hub->clk_disp)) {
  err = PTR_ERR(hub->clk_disp);
  return err;
 }

 if (hub->soc->supports_dsc) {
  hub->clk_dsc = devm_clk_get(&pdev->dev, "dsc");
  if (IS_ERR(hub->clk_dsc)) {
   err = PTR_ERR(hub->clk_dsc);
   return err;
  }
 }

 hub->clk_hub = devm_clk_get(&pdev->dev, "hub");
 if (IS_ERR(hub->clk_hub)) {
  err = PTR_ERR(hub->clk_hub);
  return err;
 }

 hub->rst = devm_reset_control_get(&pdev->dev, "misc");
 if (IS_ERR(hub->rst)) {
  err = PTR_ERR(hub->rst);
  return err;
 }

 hub->wgrps = devm_kcalloc(&pdev->dev, hub->soc->num_wgrps,
      sizeof(*hub->wgrps), GFP_KERNEL);
 if (!hub->wgrps)
  return -ENOMEM;

 for (i = 0; i < hub->soc->num_wgrps; i++) {
  struct tegra_windowgroup *wgrp = &hub->wgrps[i];
  char id[8];

  snprintf(id, sizeof(id), "wgrp%u", i);
  mutex_init(&wgrp->lock);
  wgrp->usecount = 0;
  wgrp->index = i;

  wgrp->rst = devm_reset_control_get(&pdev->dev, id);
  if (IS_ERR(wgrp->rst))
   return PTR_ERR(wgrp->rst);

  err = reset_control_assert(wgrp->rst);
  if (err < 0)
   return err;
 }

 hub->num_heads = of_get_child_count(pdev->dev.of_node);

 hub->clk_heads = devm_kcalloc(&pdev->dev, hub->num_heads, sizeof(clk),
          GFP_KERNEL);
 if (!hub->clk_heads)
  return -ENOMEM;

 for (i = 0; i < hub->num_heads; i++) {
  child = of_get_next_child(pdev->dev.of_node, child);
  if (!child) {
   dev_err(&pdev->dev, "failed to find node for head %u\n",
    i);
   return -ENODEV;
  }

  clk = devm_get_clk_from_child(&pdev->dev, child, "dc");
  if (IS_ERR(clk)) {
   dev_err(&pdev->dev, "failed to get clock for head %u\n",
    i);
   of_node_put(child);
   return PTR_ERR(clk);
  }

  hub->clk_heads[i] = clk;
 }

 of_node_put(child);


 err = reset_control_assert(hub->rst);
 if (err < 0)
  return err;

 platform_set_drvdata(pdev, hub);
 pm_runtime_enable(&pdev->dev);

 INIT_LIST_HEAD(&hub->client.list);
 hub->client.ops = &tegra_display_hub_ops;
 hub->client.dev = &pdev->dev;

 err = host1x_client_register(&hub->client);
 if (err < 0)
  dev_err(&pdev->dev, "failed to register host1x client: %d\n",
   err);

 return err;
}
