
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {int cmd_mutex; int id; int power_on; } ;
struct mipi_dsi_msg {int dummy; } ;
struct mipi_dsi_host {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int msm_dsi_manager_cmd_xfer (int ,struct mipi_dsi_msg const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct msm_dsi_host* to_msm_dsi_host (struct mipi_dsi_host*) ;

__attribute__((used)) static ssize_t dsi_host_transfer(struct mipi_dsi_host *host,
     const struct mipi_dsi_msg *msg)
{
 struct msm_dsi_host *msm_host = to_msm_dsi_host(host);
 int ret;

 if (!msg || !msm_host->power_on)
  return -EINVAL;

 mutex_lock(&msm_host->cmd_mutex);
 ret = msm_dsi_manager_cmd_xfer(msm_host->id, msg);
 mutex_unlock(&msm_host->cmd_mutex);

 return ret;
}
