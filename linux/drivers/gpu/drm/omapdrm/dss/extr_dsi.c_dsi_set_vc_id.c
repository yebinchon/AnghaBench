
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {int name; } ;
struct dsi_data {TYPE_1__* vc; } ;
struct TYPE_2__ {int vc_id; struct omap_dss_device* dssdev; } ;


 int DSSERR (char*,...) ;
 int EINVAL ;
 struct dsi_data* to_dsi_data (struct omap_dss_device*) ;

__attribute__((used)) static int dsi_set_vc_id(struct omap_dss_device *dssdev, int channel, int vc_id)
{
 struct dsi_data *dsi = to_dsi_data(dssdev);

 if (vc_id < 0 || vc_id > 3) {
  DSSERR("VC ID out of range\n");
  return -EINVAL;
 }

 if (channel < 0 || channel > 3) {
  DSSERR("Virtual Channel out of range\n");
  return -EINVAL;
 }

 if (dsi->vc[channel].dssdev != dssdev) {
  DSSERR("Virtual Channel not allocated to display %s\n",
   dssdev->name);
  return -EINVAL;
 }

 dsi->vc[channel].vc_id = vc_id;

 return 0;
}
