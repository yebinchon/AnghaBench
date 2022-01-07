
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct soc_device_attribute {int data; } ;
struct resource {int dummy; } ;
struct TYPE_15__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_14__ {void* dss; void* clk; } ;
struct dss_device {scalar_t__ video2_pll; scalar_t__ video1_pll; TYPE_1__ debugfs; int base; int feat; struct platform_device* pdev; } ;
struct component_match {int dummy; } ;
struct TYPE_16__ {int data; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int component_master_add_with_match (TYPE_2__*,int *,struct component_match*) ;
 int dev_err (TYPE_2__*,char*) ;
 int device_for_each_child (TYPE_2__*,struct component_match**,int ) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 int dma_set_coherent_mask (TYPE_2__*,int ) ;
 int dss_add_child_component ;
 int dss_component_ops ;
 int dss_debug_dump_clocks ;
 void* dss_debugfs_create_file (struct dss_device*,char*,int ,struct dss_device*) ;
 int dss_debugfs_remove_file (void*) ;
 int dss_dump_regs ;
 int dss_get_clocks (struct dss_device*) ;
 int dss_init_ports (struct dss_device*) ;
 int dss_initialize_debugfs (struct dss_device*) ;
 int dss_of_match ;
 int dss_probe_hardware (struct dss_device*) ;
 int dss_put_clocks (struct dss_device*) ;
 int dss_setup_default_clock (struct dss_device*) ;
 int dss_soc_devices ;
 int dss_uninit_ports (struct dss_device*) ;
 int dss_uninitialize_debugfs (struct dss_device*) ;
 int dss_video_pll_probe (struct dss_device*) ;
 int dss_video_pll_uninit (scalar_t__) ;
 int kfree (struct dss_device*) ;
 struct dss_device* kzalloc (int,int ) ;
 TYPE_7__* of_match_device (int ,TYPE_2__*) ;
 int of_platform_depopulate (TYPE_2__*) ;
 int of_platform_populate (int ,int *,int *,TYPE_2__*) ;
 int omapdss_gather_components (TYPE_2__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct dss_device*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 struct soc_device_attribute* soc_device_match (int ) ;

__attribute__((used)) static int dss_probe(struct platform_device *pdev)
{
 const struct soc_device_attribute *soc;
 struct component_match *match = ((void*)0);
 struct resource *dss_mem;
 struct dss_device *dss;
 int r;

 dss = kzalloc(sizeof(*dss), GFP_KERNEL);
 if (!dss)
  return -ENOMEM;

 dss->pdev = pdev;
 platform_set_drvdata(pdev, dss);

 r = dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32));
 if (r) {
  dev_err(&pdev->dev, "Failed to set the DMA mask\n");
  goto err_free_dss;
 }





 soc = soc_device_match(dss_soc_devices);
 if (soc)
  dss->feat = soc->data;
 else
  dss->feat = of_match_device(dss_of_match, &pdev->dev)->data;


 dss_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 dss->base = devm_ioremap_resource(&pdev->dev, dss_mem);
 if (IS_ERR(dss->base)) {
  r = PTR_ERR(dss->base);
  goto err_free_dss;
 }

 r = dss_get_clocks(dss);
 if (r)
  goto err_free_dss;

 r = dss_setup_default_clock(dss);
 if (r)
  goto err_put_clocks;


 r = dss_video_pll_probe(dss);
 if (r)
  goto err_put_clocks;

 r = dss_init_ports(dss);
 if (r)
  goto err_uninit_plls;


 pm_runtime_enable(&pdev->dev);

 r = dss_probe_hardware(dss);
 if (r)
  goto err_pm_runtime_disable;


 r = dss_initialize_debugfs(dss);
 if (r)
  goto err_pm_runtime_disable;

 dss->debugfs.clk = dss_debugfs_create_file(dss, "clk",
         dss_debug_dump_clocks, dss);
 dss->debugfs.dss = dss_debugfs_create_file(dss, "dss", dss_dump_regs,
         dss);


 r = of_platform_populate(pdev->dev.of_node, ((void*)0), ((void*)0), &pdev->dev);
 if (r)
  goto err_uninit_debugfs;

 omapdss_gather_components(&pdev->dev);

 device_for_each_child(&pdev->dev, &match, dss_add_child_component);

 r = component_master_add_with_match(&pdev->dev, &dss_component_ops, match);
 if (r)
  goto err_of_depopulate;

 return 0;

err_of_depopulate:
 of_platform_depopulate(&pdev->dev);

err_uninit_debugfs:
 dss_debugfs_remove_file(dss->debugfs.clk);
 dss_debugfs_remove_file(dss->debugfs.dss);
 dss_uninitialize_debugfs(dss);

err_pm_runtime_disable:
 pm_runtime_disable(&pdev->dev);
 dss_uninit_ports(dss);

err_uninit_plls:
 if (dss->video1_pll)
  dss_video_pll_uninit(dss->video1_pll);
 if (dss->video2_pll)
  dss_video_pll_uninit(dss->video2_pll);

err_put_clocks:
 dss_put_clocks(dss);

err_free_dss:
 kfree(dss);

 return r;
}
