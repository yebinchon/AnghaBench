
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {int name; } ;
struct dsi_data {TYPE_1__* vc; } ;
struct TYPE_2__ {struct omap_dss_device* dssdev; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DSSERR (char*,int ) ;
 int ENOSPC ;
 struct dsi_data* to_dsi_data (struct omap_dss_device*) ;

__attribute__((used)) static int dsi_request_vc(struct omap_dss_device *dssdev, int *channel)
{
 struct dsi_data *dsi = to_dsi_data(dssdev);
 int i;

 for (i = 0; i < ARRAY_SIZE(dsi->vc); i++) {
  if (!dsi->vc[i].dssdev) {
   dsi->vc[i].dssdev = dssdev;
   *channel = i;
   return 0;
  }
 }

 DSSERR("cannot get VC for display %s", dssdev->name);
 return -ENOSPC;
}
