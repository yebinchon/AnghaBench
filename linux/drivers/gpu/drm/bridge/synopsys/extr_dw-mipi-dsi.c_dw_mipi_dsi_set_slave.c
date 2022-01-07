
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi {int mode_flags; struct dw_mipi_dsi* slave; int format; int channel; int lanes; struct dw_mipi_dsi* master; } ;



void dw_mipi_dsi_set_slave(struct dw_mipi_dsi *dsi, struct dw_mipi_dsi *slave)
{

 dsi->slave = slave;
 dsi->slave->master = dsi;


 dsi->slave->lanes = dsi->lanes;
 dsi->slave->channel = dsi->channel;
 dsi->slave->format = dsi->format;
 dsi->slave->mode_flags = dsi->mode_flags;
}
