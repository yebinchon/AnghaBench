
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_dss_device {int dispc_channel; TYPE_2__* dss; } ;
struct dss_lcd_mgr_config {int dummy; } ;
struct TYPE_4__ {int mgr_ops_priv; TYPE_1__* mgr_ops; } ;
struct TYPE_3__ {int (* set_lcd_config ) (int ,int ,struct dss_lcd_mgr_config const*) ;} ;


 int stub1 (int ,int ,struct dss_lcd_mgr_config const*) ;

void dss_mgr_set_lcd_config(struct omap_dss_device *dssdev,
  const struct dss_lcd_mgr_config *config)
{
 dssdev->dss->mgr_ops->set_lcd_config(dssdev->dss->mgr_ops_priv,
          dssdev->dispc_channel, config);
}
