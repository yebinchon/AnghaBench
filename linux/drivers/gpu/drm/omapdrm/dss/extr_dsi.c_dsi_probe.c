
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct soc_device_attribute {TYPE_2__* data; } ;
struct resource {scalar_t__ start; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct dsi_module_id_data {scalar_t__ address; int id; } ;
struct TYPE_5__ {int last_reset; } ;
struct dsi_data {scalar_t__ irq; int num_lanes_supported; TYPE_2__* data; TYPE_4__* vc; int syscon; int module_id; void* vdds_dsi_reg; void* pll_base; void* phy_base; void* proto_base; int te_timer; int framedone_timeout_work; int bus_lock; int lock; TYPE_1__ irq_stats; int irq_stats_lock; scalar_t__ errors; int errors_lock; int irq_lock; struct device* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_8__ {scalar_t__ vc_id; int * dssdev; int source; } ;
struct TYPE_7__ {TYPE_2__* data; } ;
struct TYPE_6__ {scalar_t__ model; int quirks; struct dsi_module_id_data* modules; } ;


 unsigned int ARRAY_SIZE (TYPE_4__*) ;
 int DSI_GNQ ;
 scalar_t__ DSI_MODEL_OMAP4 ;
 scalar_t__ DSI_MODEL_OMAP5 ;
 int DSI_QUIRK_GNQ ;
 int DSI_VC_SOURCE_L4 ;
 int DSSERR (char*,...) ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int REG_GET (struct dsi_data*,int ,int,int) ;
 int component_add (struct device*,int *) ;
 int dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct dsi_data*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct dsi_data* devm_kzalloc (struct device*,int,int ) ;
 void* devm_regulator_get (struct device*,char*) ;
 int devm_request_irq (struct device*,scalar_t__,int ,int ,int ,struct dsi_data*) ;
 int dsi_component_ops ;
 int dsi_framedone_timeout_work_callback ;
 int dsi_get_clocks (struct dsi_data*) ;
 int dsi_init_output (struct dsi_data*) ;
 int dsi_of_match ;
 int dsi_probe_of (struct dsi_data*) ;
 int dsi_runtime_get (struct dsi_data*) ;
 int dsi_runtime_put (struct dsi_data*) ;
 int dsi_soc_devices ;
 int dsi_te_timeout ;
 int dsi_uninit_output (struct dsi_data*) ;
 int jiffies ;
 int mutex_init (int *) ;
 struct device_node* of_find_node_by_name (int *,char*) ;
 TYPE_3__* of_match_node (int ,int ) ;
 int of_node_put (struct device_node*) ;
 int of_platform_depopulate (struct device*) ;
 int of_platform_populate (int ,int *,int *,struct device*) ;
 int omap_dsi_irq_handler ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int sema_init (int *,int) ;
 struct soc_device_attribute* soc_device_match (int ) ;
 int spin_lock_init (int *) ;
 int syscon_node_to_regmap (struct device_node*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int dsi_probe(struct platform_device *pdev)
{
 const struct soc_device_attribute *soc;
 const struct dsi_module_id_data *d;
 struct device *dev = &pdev->dev;
 struct dsi_data *dsi;
 struct resource *dsi_mem;
 struct resource *res;
 unsigned int i;
 int r;

 dsi = devm_kzalloc(dev, sizeof(*dsi), GFP_KERNEL);
 if (!dsi)
  return -ENOMEM;

 dsi->dev = dev;
 dev_set_drvdata(dev, dsi);

 spin_lock_init(&dsi->irq_lock);
 spin_lock_init(&dsi->errors_lock);
 dsi->errors = 0;






 mutex_init(&dsi->lock);
 sema_init(&dsi->bus_lock, 1);

 INIT_DEFERRABLE_WORK(&dsi->framedone_timeout_work,
        dsi_framedone_timeout_work_callback);





 dsi_mem = platform_get_resource_byname(pdev, IORESOURCE_MEM, "proto");
 dsi->proto_base = devm_ioremap_resource(dev, dsi_mem);
 if (IS_ERR(dsi->proto_base))
  return PTR_ERR(dsi->proto_base);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "phy");
 dsi->phy_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(dsi->phy_base))
  return PTR_ERR(dsi->phy_base);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "pll");
 dsi->pll_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(dsi->pll_base))
  return PTR_ERR(dsi->pll_base);

 dsi->irq = platform_get_irq(pdev, 0);
 if (dsi->irq < 0) {
  DSSERR("platform_get_irq failed\n");
  return -ENODEV;
 }

 r = devm_request_irq(dev, dsi->irq, omap_dsi_irq_handler,
        IRQF_SHARED, dev_name(dev), dsi);
 if (r < 0) {
  DSSERR("request_irq failed\n");
  return r;
 }

 dsi->vdds_dsi_reg = devm_regulator_get(dev, "vdd");
 if (IS_ERR(dsi->vdds_dsi_reg)) {
  if (PTR_ERR(dsi->vdds_dsi_reg) != -EPROBE_DEFER)
   DSSERR("can't get DSI VDD regulator\n");
  return PTR_ERR(dsi->vdds_dsi_reg);
 }

 soc = soc_device_match(dsi_soc_devices);
 if (soc)
  dsi->data = soc->data;
 else
  dsi->data = of_match_node(dsi_of_match, dev->of_node)->data;

 d = dsi->data->modules;
 while (d->address != 0 && d->address != dsi_mem->start)
  d++;

 if (d->address == 0) {
  DSSERR("unsupported DSI module\n");
  return -ENODEV;
 }

 dsi->module_id = d->id;

 if (dsi->data->model == DSI_MODEL_OMAP4 ||
     dsi->data->model == DSI_MODEL_OMAP5) {
  struct device_node *np;





  np = of_find_node_by_name(((void*)0),
   dsi->data->model == DSI_MODEL_OMAP4 ?
   "omap4_padconf_global" : "omap5_padconf_global");
  if (!np)
   return -ENODEV;

  dsi->syscon = syscon_node_to_regmap(np);
  of_node_put(np);
 }


 for (i = 0; i < ARRAY_SIZE(dsi->vc); i++) {
  dsi->vc[i].source = DSI_VC_SOURCE_L4;
  dsi->vc[i].dssdev = ((void*)0);
  dsi->vc[i].vc_id = 0;
 }

 r = dsi_get_clocks(dsi);
 if (r)
  return r;

 pm_runtime_enable(dev);



 if (dsi->data->quirks & DSI_QUIRK_GNQ) {
  dsi_runtime_get(dsi);

  dsi->num_lanes_supported = 1 + REG_GET(dsi, DSI_GNQ, 11, 9);
  dsi_runtime_put(dsi);
 } else {
  dsi->num_lanes_supported = 3;
 }

 r = of_platform_populate(dev->of_node, ((void*)0), ((void*)0), dev);
 if (r) {
  DSSERR("Failed to populate DSI child devices: %d\n", r);
  goto err_pm_disable;
 }

 r = dsi_init_output(dsi);
 if (r)
  goto err_of_depopulate;

 r = dsi_probe_of(dsi);
 if (r) {
  DSSERR("Invalid DSI DT data\n");
  goto err_uninit_output;
 }

 r = component_add(&pdev->dev, &dsi_component_ops);
 if (r)
  goto err_uninit_output;

 return 0;

err_uninit_output:
 dsi_uninit_output(dsi);
err_of_depopulate:
 of_platform_depopulate(dev);
err_pm_disable:
 pm_runtime_disable(dev);
 return r;
}
