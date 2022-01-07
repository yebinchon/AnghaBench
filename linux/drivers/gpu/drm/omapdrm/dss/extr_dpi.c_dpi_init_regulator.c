
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator {int dummy; } ;
struct dpi_data {struct regulator* vdds_dsi_reg; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DSSERR (char*) ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct regulator*) ;
 int PTR_ERR (struct regulator*) ;
 struct regulator* devm_regulator_get (int *,char*) ;
 int dpi_soc_devices ;
 int soc_device_match (int ) ;

__attribute__((used)) static int dpi_init_regulator(struct dpi_data *dpi)
{
 struct regulator *vdds_dsi;





 if (!soc_device_match(dpi_soc_devices))
  return 0;

 vdds_dsi = devm_regulator_get(&dpi->pdev->dev, "vdds_dsi");
 if (IS_ERR(vdds_dsi)) {
  if (PTR_ERR(vdds_dsi) != -EPROBE_DEFER)
   DSSERR("can't get VDDS_DSI regulator\n");
  return PTR_ERR(vdds_dsi);
 }

 dpi->vdds_dsi_reg = vdds_dsi;

 return 0;
}
