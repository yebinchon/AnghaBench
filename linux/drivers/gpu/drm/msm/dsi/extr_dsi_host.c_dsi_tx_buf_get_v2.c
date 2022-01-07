
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {void* tx_buf; } ;



void *dsi_tx_buf_get_v2(struct msm_dsi_host *msm_host)
{
 return msm_host->tx_buf;
}
