
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpi_data {int dss_model; int id; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DSSWARN (char*) ;





 int OMAP_DSS_CHANNEL_LCD ;
 int OMAP_DSS_CHANNEL_LCD2 ;
 int OMAP_DSS_CHANNEL_LCD3 ;

__attribute__((used)) static enum omap_channel dpi_get_channel(struct dpi_data *dpi)
{
 switch (dpi->dss_model) {
 case 131:
 case 130:
  return OMAP_DSS_CHANNEL_LCD;

 case 132:
  switch (dpi->id) {
  case 2:
   return OMAP_DSS_CHANNEL_LCD3;
  case 1:
   return OMAP_DSS_CHANNEL_LCD2;
  case 0:
  default:
   return OMAP_DSS_CHANNEL_LCD;
  }

 case 129:
  return OMAP_DSS_CHANNEL_LCD2;

 case 128:
  return OMAP_DSS_CHANNEL_LCD3;

 default:
  DSSWARN("unsupported DSS version\n");
  return OMAP_DSS_CHANNEL_LCD;
 }
}
