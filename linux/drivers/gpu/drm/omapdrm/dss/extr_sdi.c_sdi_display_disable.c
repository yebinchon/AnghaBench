
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdi_device {int vdds_sdi_reg; TYPE_1__* dss; int output; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int dispc; } ;


 int dispc_runtime_put (int ) ;
 int dss_mgr_disable (int *) ;
 int dss_sdi_disable (TYPE_1__*) ;
 struct sdi_device* dssdev_to_sdi (struct omap_dss_device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void sdi_display_disable(struct omap_dss_device *dssdev)
{
 struct sdi_device *sdi = dssdev_to_sdi(dssdev);

 dss_mgr_disable(&sdi->output);

 dss_sdi_disable(sdi->dss);

 dispc_runtime_put(sdi->dss->dispc);

 regulator_disable(sdi->vdds_sdi_reg);
}
