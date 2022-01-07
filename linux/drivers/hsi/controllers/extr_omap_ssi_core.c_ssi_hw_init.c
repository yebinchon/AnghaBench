
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct omap_ssi_controller {int gdd_gcr; scalar_t__ sys; int fck_rate; scalar_t__ gdd; } ;
struct TYPE_3__ {int parent; } ;
struct hsi_controller {TYPE_1__ device; } ;


 int DIV_ROUND_CLOSEST (int ,int) ;
 int SSI_CLK_AUTOGATING_ON ;
 scalar_t__ SSI_GDD_GCR_REG ;
 scalar_t__ SSI_GDD_GRST_REG ;
 int SSI_SWRESET ;
 int dev_dbg (TYPE_1__*,char*,int ) ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct omap_ssi_controller* hsi_controller_drvdata (struct hsi_controller*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int ssi_get_clk_rate (struct hsi_controller*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int ssi_hw_init(struct hsi_controller *ssi)
{
 struct omap_ssi_controller *omap_ssi = hsi_controller_drvdata(ssi);
 int err;

 err = pm_runtime_get_sync(ssi->device.parent);
 if (err < 0) {
  dev_err(&ssi->device, "runtime PM failed %d\n", err);
  return err;
 }

 writel_relaxed(SSI_SWRESET, omap_ssi->gdd + SSI_GDD_GRST_REG);

 omap_ssi->fck_rate = DIV_ROUND_CLOSEST(ssi_get_clk_rate(ssi), 1000);
 dev_dbg(&ssi->device, "SSI fck rate %lu kHz\n", omap_ssi->fck_rate);

 writel_relaxed(SSI_CLK_AUTOGATING_ON, omap_ssi->sys + SSI_GDD_GCR_REG);
 omap_ssi->gdd_gcr = SSI_CLK_AUTOGATING_ON;
 pm_runtime_put_sync(ssi->device.parent);

 return 0;
}
