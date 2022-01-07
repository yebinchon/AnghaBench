
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi {int dummy; } ;


 int __dw_mipi_dsi_remove (struct dw_mipi_dsi*) ;

void dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi)
{
 __dw_mipi_dsi_remove(dsi);
}
