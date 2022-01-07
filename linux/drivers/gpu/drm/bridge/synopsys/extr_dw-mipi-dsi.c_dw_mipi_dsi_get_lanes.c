
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dw_mipi_dsi {unsigned int lanes; TYPE_2__* slave; TYPE_1__* master; } ;
struct TYPE_4__ {unsigned int lanes; } ;
struct TYPE_3__ {unsigned int lanes; } ;



__attribute__((used)) static unsigned int dw_mipi_dsi_get_lanes(struct dw_mipi_dsi *dsi)
{

 if (dsi->master)
  return dsi->master->lanes + dsi->lanes;


 if (dsi->slave)
  return dsi->lanes + dsi->slave->lanes;


 return dsi->lanes;
}
