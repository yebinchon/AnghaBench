
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {int dummy; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int EINVAL ;
 int OMAP_DSS_CHANNEL_LCD ;

__attribute__((used)) static int dss_dpi_select_source_omap2_omap3(struct dss_device *dss, int port,
          enum omap_channel channel)
{
 if (channel != OMAP_DSS_CHANNEL_LCD)
  return -EINVAL;

 return 0;
}
