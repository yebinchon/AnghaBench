
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int next; int dss; } ;
struct dpi_data {int dummy; } ;


 struct dpi_data* dpi_get_data_from_dssdev (struct omap_dss_device*) ;
 int dpi_init_pll (struct dpi_data*) ;
 int omapdss_device_connect (int ,struct omap_dss_device*,int ) ;

__attribute__((used)) static int dpi_connect(struct omap_dss_device *src,
         struct omap_dss_device *dst)
{
 struct dpi_data *dpi = dpi_get_data_from_dssdev(dst);

 dpi_init_pll(dpi);

 return omapdss_device_connect(dst->dss, dst, dst->next);
}
