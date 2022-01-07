
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsi_data {int framedone_data; int (* framedone_callback ) (int,int ) ;scalar_t__ te_enabled; TYPE_1__* dss; } ;
struct TYPE_2__ {int dispc; } ;


 int DSI_TIMING2 ;
 int REG_FLD_MOD (struct dsi_data*,int ,int,int,int) ;
 int dispc_enable_sidle (int ) ;
 int dsi_perf_show (struct dsi_data*,char*) ;
 int stub1 (int,int ) ;

__attribute__((used)) static void dsi_handle_framedone(struct dsi_data *dsi, int error)
{

 dispc_enable_sidle(dsi->dss->dispc);

 if (dsi->te_enabled) {

  REG_FLD_MOD(dsi, DSI_TIMING2, 1, 15, 15);
 }

 dsi->framedone_callback(error, dsi->framedone_data);

 if (!error)
  dsi_perf_show(dsi, "DISPC");
}
