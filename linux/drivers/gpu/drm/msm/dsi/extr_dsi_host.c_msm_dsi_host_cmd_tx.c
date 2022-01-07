
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {int dummy; } ;
struct mipi_dsi_msg {int dummy; } ;
struct mipi_dsi_host {int dummy; } ;


 int dsi_cmds2buf_tx (struct msm_dsi_host*,struct mipi_dsi_msg const*) ;
 struct msm_dsi_host* to_msm_dsi_host (struct mipi_dsi_host*) ;

int msm_dsi_host_cmd_tx(struct mipi_dsi_host *host,
    const struct mipi_dsi_msg *msg)
{
 struct msm_dsi_host *msm_host = to_msm_dsi_host(host);

 return dsi_cmds2buf_tx(msm_host, msg);
}
