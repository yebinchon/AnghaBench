
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi {int pdev; int * host; int * phy_dev; int * phy; } ;


 int msm_dsi_host_destroy (int *) ;
 int msm_dsi_manager_unregister (struct msm_dsi*) ;
 int platform_set_drvdata (int ,int *) ;
 int put_device (int *) ;

__attribute__((used)) static void dsi_destroy(struct msm_dsi *msm_dsi)
{
 if (!msm_dsi)
  return;

 msm_dsi_manager_unregister(msm_dsi);

 if (msm_dsi->phy_dev) {
  put_device(msm_dsi->phy_dev);
  msm_dsi->phy = ((void*)0);
  msm_dsi->phy_dev = ((void*)0);
 }

 if (msm_dsi->host) {
  msm_dsi_host_destroy(msm_dsi->host);
  msm_dsi->host = ((void*)0);
 }

 platform_set_drvdata(msm_dsi->pdev, ((void*)0));
}
