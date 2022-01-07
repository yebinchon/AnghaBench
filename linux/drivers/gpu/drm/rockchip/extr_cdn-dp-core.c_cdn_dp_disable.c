
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_lanes; scalar_t__ rate; } ;
struct cdn_dp_device {int active; int ports; int * edid; int connected; TYPE_1__ link; int dev; int * port; } ;


 int DPTX_HPD_DEL ;
 int DPTX_HPD_SEL_MASK ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int GRF_SOC_CON26 ;
 int cdn_dp_clk_disable (struct cdn_dp_device*) ;
 int cdn_dp_disable_phy (struct cdn_dp_device*,int ) ;
 int cdn_dp_grf_write (struct cdn_dp_device*,int ,int) ;
 int cdn_dp_set_firmware_active (struct cdn_dp_device*,int) ;
 int kfree (int *) ;

__attribute__((used)) static int cdn_dp_disable(struct cdn_dp_device *dp)
{
 int ret, i;

 if (!dp->active)
  return 0;

 for (i = 0; i < dp->ports; i++)
  cdn_dp_disable_phy(dp, dp->port[i]);

 ret = cdn_dp_grf_write(dp, GRF_SOC_CON26,
          DPTX_HPD_SEL_MASK | DPTX_HPD_DEL);
 if (ret) {
  DRM_DEV_ERROR(dp->dev, "Failed to clear hpd sel %d\n",
         ret);
  return ret;
 }

 cdn_dp_set_firmware_active(dp, 0);
 cdn_dp_clk_disable(dp);
 dp->active = 0;
 dp->link.rate = 0;
 dp->link.num_lanes = 0;
 if (!dp->connected) {
  kfree(dp->edid);
  dp->edid = ((void*)0);
 }

 return 0;
}
