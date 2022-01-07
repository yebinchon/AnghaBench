
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsi_data {TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ model; } ;


 scalar_t__ DSI_MODEL_OMAP4 ;
 scalar_t__ DSI_MODEL_OMAP5 ;
 int dsi_omap4_mux_pads (struct dsi_data*,unsigned int) ;
 int dsi_omap5_mux_pads (struct dsi_data*,unsigned int) ;

__attribute__((used)) static int dsi_enable_pads(struct dsi_data *dsi, unsigned int lane_mask)
{
 if (dsi->data->model == DSI_MODEL_OMAP4)
  return dsi_omap4_mux_pads(dsi, lane_mask);
 if (dsi->data->model == DSI_MODEL_OMAP5)
  return dsi_omap5_mux_pads(dsi, lane_mask);
 return 0;
}
