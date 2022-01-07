
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int dispc_channel; } ;
struct dispc_clock_info {int dummy; } ;
struct TYPE_7__ {struct dispc_clock_info clock_info; } ;
struct sdi_device {int vdds_sdi_reg; TYPE_2__* dss; TYPE_6__ output; int datapairs; TYPE_1__ mgr_config; int pixelclock; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_8__ {int dispc; } ;


 int dispc_mgr_set_clock_div (int ,int ,struct dispc_clock_info*) ;
 int dispc_runtime_get (int ) ;
 int dispc_runtime_put (int ) ;
 int dss_mgr_enable (TYPE_6__*) ;
 int dss_sdi_disable (TYPE_2__*) ;
 int dss_sdi_enable (TYPE_2__*) ;
 int dss_sdi_init (TYPE_2__*,int ) ;
 int dss_set_fck_rate (TYPE_2__*,unsigned long) ;
 struct sdi_device* dssdev_to_sdi (struct omap_dss_device*) ;
 int mdelay (int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int sdi_calc_clock_div (struct sdi_device*,int ,unsigned long*,struct dispc_clock_info*) ;
 int sdi_config_lcd_manager (struct sdi_device*) ;

__attribute__((used)) static void sdi_display_enable(struct omap_dss_device *dssdev)
{
 struct sdi_device *sdi = dssdev_to_sdi(dssdev);
 struct dispc_clock_info dispc_cinfo;
 unsigned long fck;
 int r;

 r = regulator_enable(sdi->vdds_sdi_reg);
 if (r)
  return;

 r = dispc_runtime_get(sdi->dss->dispc);
 if (r)
  goto err_get_dispc;

 r = sdi_calc_clock_div(sdi, sdi->pixelclock, &fck, &dispc_cinfo);
 if (r)
  goto err_calc_clock_div;

 sdi->mgr_config.clock_info = dispc_cinfo;

 r = dss_set_fck_rate(sdi->dss, fck);
 if (r)
  goto err_set_dss_clock_div;

 sdi_config_lcd_manager(sdi);
 dispc_mgr_set_clock_div(sdi->dss->dispc, sdi->output.dispc_channel,
    &sdi->mgr_config.clock_info);

 dss_sdi_init(sdi->dss, sdi->datapairs);
 r = dss_sdi_enable(sdi->dss);
 if (r)
  goto err_sdi_enable;
 mdelay(2);

 r = dss_mgr_enable(&sdi->output);
 if (r)
  goto err_mgr_enable;

 return;

err_mgr_enable:
 dss_sdi_disable(sdi->dss);
err_sdi_enable:
err_set_dss_clock_div:
err_calc_clock_div:
 dispc_runtime_put(sdi->dss->dispc);
err_get_dispc:
 regulator_disable(sdi->vdds_sdi_reg);
}
