
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_dsi {struct mipi_dsi_host* host; } ;
struct mipi_dsi_host {int dummy; } ;


 int DSI_0 ;
 scalar_t__ IS_SYNC_NEEDED () ;
 struct msm_dsi* dsi_mgr_get_dsi (int) ;
 int msm_dsi_host_cmd_xfer_commit (struct mipi_dsi_host*,int ,int ) ;

bool msm_dsi_manager_cmd_xfer_trigger(int id, u32 dma_base, u32 len)
{
 struct msm_dsi *msm_dsi = dsi_mgr_get_dsi(id);
 struct msm_dsi *msm_dsi0 = dsi_mgr_get_dsi(DSI_0);
 struct mipi_dsi_host *host = msm_dsi->host;

 if (IS_SYNC_NEEDED() && (id == DSI_0))
  return 0;

 if (IS_SYNC_NEEDED() && msm_dsi0)
  msm_dsi_host_cmd_xfer_commit(msm_dsi0->host, dma_base, len);

 msm_dsi_host_cmd_xfer_commit(host, dma_base, len);

 return 1;
}
