
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwpm_sa_data {int flags; int mapped_rem_addr; int mapped_loc_addr; int rem_addr; int loc_addr; } ;
struct iwpm_dev_data {int if_name; int dev_name; } ;
struct iw_cm_id {int mapped; int m_local_addr; int local_addr; int m_remote_addr; int remote_addr; TYPE_1__* device; } ;
struct TYPE_2__ {char* iw_ifname; int iw_driver_flags; int dev; } ;


 int EINVAL ;
 int IWPM_FLAGS_NO_PORT_MAP ;
 int IW_F_NO_PORT_MAP ;
 int RDMA_NL_IWCM ;
 char* dev_name (int *) ;
 int iw_cm_check_wildcard (int *,int *,int *) ;
 int iwpm_add_and_query_mapping (struct iwpm_sa_data*,int ) ;
 int iwpm_add_mapping (struct iwpm_sa_data*,int ) ;
 int iwpm_create_mapinfo (int *,int *,int ,int ) ;
 scalar_t__ iwpm_register_pid (struct iwpm_dev_data*,int ) ;
 int iwpm_valid_pid () ;
 int strcpy (int ,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int iw_cm_map(struct iw_cm_id *cm_id, bool active)
{
 const char *devname = dev_name(&cm_id->device->dev);
 const char *ifname = cm_id->device->iw_ifname;
 struct iwpm_dev_data pm_reg_msg = {};
 struct iwpm_sa_data pm_msg;
 int status;

 if (strlen(devname) >= sizeof(pm_reg_msg.dev_name) ||
     strlen(ifname) >= sizeof(pm_reg_msg.if_name))
  return -EINVAL;

 cm_id->m_local_addr = cm_id->local_addr;
 cm_id->m_remote_addr = cm_id->remote_addr;

 strcpy(pm_reg_msg.dev_name, devname);
 strcpy(pm_reg_msg.if_name, ifname);

 if (iwpm_register_pid(&pm_reg_msg, RDMA_NL_IWCM) ||
     !iwpm_valid_pid())
  return 0;

 cm_id->mapped = 1;
 pm_msg.loc_addr = cm_id->local_addr;
 pm_msg.rem_addr = cm_id->remote_addr;
 pm_msg.flags = (cm_id->device->iw_driver_flags & IW_F_NO_PORT_MAP) ?
         IWPM_FLAGS_NO_PORT_MAP : 0;
 if (active)
  status = iwpm_add_and_query_mapping(&pm_msg,
          RDMA_NL_IWCM);
 else
  status = iwpm_add_mapping(&pm_msg, RDMA_NL_IWCM);

 if (!status) {
  cm_id->m_local_addr = pm_msg.mapped_loc_addr;
  if (active) {
   cm_id->m_remote_addr = pm_msg.mapped_rem_addr;
   iw_cm_check_wildcard(&pm_msg.mapped_rem_addr,
          &cm_id->remote_addr,
          &cm_id->m_remote_addr);
  }
 }

 return iwpm_create_mapinfo(&cm_id->local_addr,
       &cm_id->m_local_addr,
       RDMA_NL_IWCM, pm_msg.flags);
}
