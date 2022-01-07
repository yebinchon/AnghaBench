
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsi_data {int module_id; TYPE_1__* data; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int model; } ;





 int DSSWARN (char*) ;
 int OMAP_DSS_CHANNEL_LCD ;
 int OMAP_DSS_CHANNEL_LCD2 ;
 int OMAP_DSS_CHANNEL_LCD3 ;

__attribute__((used)) static enum omap_channel dsi_get_channel(struct dsi_data *dsi)
{
 switch (dsi->data->model) {
 case 130:
  return OMAP_DSS_CHANNEL_LCD;

 case 129:
  switch (dsi->module_id) {
  case 0:
   return OMAP_DSS_CHANNEL_LCD;
  case 1:
   return OMAP_DSS_CHANNEL_LCD2;
  default:
   DSSWARN("unsupported module id\n");
   return OMAP_DSS_CHANNEL_LCD;
  }

 case 128:
  switch (dsi->module_id) {
  case 0:
   return OMAP_DSS_CHANNEL_LCD;
  case 1:
   return OMAP_DSS_CHANNEL_LCD3;
  default:
   DSSWARN("unsupported module id\n");
   return OMAP_DSS_CHANNEL_LCD;
  }

 default:
  DSSWARN("unsupported DSS version\n");
  return OMAP_DSS_CHANNEL_LCD;
 }
}
