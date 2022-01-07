
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int nr_resets; int of_node; int * ops; } ;
struct qcom_scm {TYPE_1__* dev; int * core_clk; TYPE_4__ reset; int * bus_clk; int * iface_clk; int dload_mode_addr; } ;
struct TYPE_8__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INT_MAX ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 unsigned long SCM_HAS_BUS_CLK ;
 unsigned long SCM_HAS_CORE_CLK ;
 unsigned long SCM_HAS_IFACE_CLK ;
 int __qcom_scm_init () ;
 struct qcom_scm* __scm ;
 int clk_set_rate (int *,int ) ;
 int dev_err (TYPE_1__*,char*) ;
 void* devm_clk_get (TYPE_1__*,char*) ;
 struct qcom_scm* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_reset_controller_register (TYPE_1__*,TYPE_4__*) ;
 scalar_t__ download_mode ;
 scalar_t__ of_device_get_match_data (TYPE_1__*) ;
 int qcom_scm_find_dload_address (TYPE_1__*,int *) ;
 int qcom_scm_pas_reset_ops ;
 int qcom_scm_set_download_mode (int) ;

__attribute__((used)) static int qcom_scm_probe(struct platform_device *pdev)
{
 struct qcom_scm *scm;
 unsigned long clks;
 int ret;

 scm = devm_kzalloc(&pdev->dev, sizeof(*scm), GFP_KERNEL);
 if (!scm)
  return -ENOMEM;

 ret = qcom_scm_find_dload_address(&pdev->dev, &scm->dload_mode_addr);
 if (ret < 0)
  return ret;

 clks = (unsigned long)of_device_get_match_data(&pdev->dev);

 scm->core_clk = devm_clk_get(&pdev->dev, "core");
 if (IS_ERR(scm->core_clk)) {
  if (PTR_ERR(scm->core_clk) == -EPROBE_DEFER)
   return PTR_ERR(scm->core_clk);

  if (clks & SCM_HAS_CORE_CLK) {
   dev_err(&pdev->dev, "failed to acquire core clk\n");
   return PTR_ERR(scm->core_clk);
  }

  scm->core_clk = ((void*)0);
 }

 scm->iface_clk = devm_clk_get(&pdev->dev, "iface");
 if (IS_ERR(scm->iface_clk)) {
  if (PTR_ERR(scm->iface_clk) == -EPROBE_DEFER)
   return PTR_ERR(scm->iface_clk);

  if (clks & SCM_HAS_IFACE_CLK) {
   dev_err(&pdev->dev, "failed to acquire iface clk\n");
   return PTR_ERR(scm->iface_clk);
  }

  scm->iface_clk = ((void*)0);
 }

 scm->bus_clk = devm_clk_get(&pdev->dev, "bus");
 if (IS_ERR(scm->bus_clk)) {
  if (PTR_ERR(scm->bus_clk) == -EPROBE_DEFER)
   return PTR_ERR(scm->bus_clk);

  if (clks & SCM_HAS_BUS_CLK) {
   dev_err(&pdev->dev, "failed to acquire bus clk\n");
   return PTR_ERR(scm->bus_clk);
  }

  scm->bus_clk = ((void*)0);
 }

 scm->reset.ops = &qcom_scm_pas_reset_ops;
 scm->reset.nr_resets = 1;
 scm->reset.of_node = pdev->dev.of_node;
 ret = devm_reset_controller_register(&pdev->dev, &scm->reset);
 if (ret)
  return ret;


 ret = clk_set_rate(scm->core_clk, INT_MAX);
 if (ret)
  return ret;

 __scm = scm;
 __scm->dev = &pdev->dev;

 __qcom_scm_init();






 if (download_mode)
  qcom_scm_set_download_mode(1);

 return 0;
}
