
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi {scalar_t__ master; scalar_t__ slave; } ;



__attribute__((used)) static inline bool dw_mipi_is_dual_mode(struct dw_mipi_dsi *dsi)
{
 return dsi->slave || dsi->master;
}
