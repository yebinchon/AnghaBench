
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi {int dummy; } ;


 int DSI_INT_MSK0 ;
 int DSI_INT_MSK1 ;
 int DSI_INT_ST0 ;
 int DSI_INT_ST1 ;
 int dsi_read (struct dw_mipi_dsi*,int ) ;
 int dsi_write (struct dw_mipi_dsi*,int ,int ) ;

__attribute__((used)) static void dw_mipi_dsi_clear_err(struct dw_mipi_dsi *dsi)
{
 dsi_read(dsi, DSI_INT_ST0);
 dsi_read(dsi, DSI_INT_ST1);
 dsi_write(dsi, DSI_INT_MSK0, 0);
 dsi_write(dsi, DSI_INT_MSK1, 0);
}
