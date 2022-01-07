
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct imx_sc_pd_soc {int dummy; } ;


 int ENODEV ;
 int imx_scu_get_handle (int *) ;
 int imx_scu_init_pm_domains (int *,struct imx_sc_pd_soc const*) ;
 struct imx_sc_pd_soc* of_device_get_match_data (int *) ;
 int pm_ipc_handle ;

__attribute__((used)) static int imx_sc_pd_probe(struct platform_device *pdev)
{
 const struct imx_sc_pd_soc *pd_soc;
 int ret;

 ret = imx_scu_get_handle(&pm_ipc_handle);
 if (ret)
  return ret;

 pd_soc = of_device_get_match_data(&pdev->dev);
 if (!pd_soc)
  return -ENODEV;

 return imx_scu_init_pm_domains(&pdev->dev, pd_soc);
}
