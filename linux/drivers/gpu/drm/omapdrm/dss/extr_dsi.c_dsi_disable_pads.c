
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsi_data {TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ model; } ;


 scalar_t__ DSI_MODEL_OMAP4 ;
 scalar_t__ DSI_MODEL_OMAP5 ;
 int dsi_omap4_mux_pads (struct dsi_data*,int ) ;
 int dsi_omap5_mux_pads (struct dsi_data*,int ) ;

__attribute__((used)) static void dsi_disable_pads(struct dsi_data *dsi)
{
 if (dsi->data->model == DSI_MODEL_OMAP4)
  dsi_omap4_mux_pads(dsi, 0);
 else if (dsi->data->model == DSI_MODEL_OMAP5)
  dsi_omap5_mux_pads(dsi, 0);
}
