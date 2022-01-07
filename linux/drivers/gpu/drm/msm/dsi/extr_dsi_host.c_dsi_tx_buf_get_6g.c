
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {int tx_gem_obj; } ;


 void* msm_gem_get_vaddr (int ) ;

void *dsi_tx_buf_get_6g(struct msm_dsi_host *msm_host)
{
 return msm_gem_get_vaddr(msm_host->tx_gem_obj);
}
