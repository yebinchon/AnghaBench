
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int u6_addr32; } ;
struct TYPE_8__ {TYPE_2__ in6_u; } ;
struct sockaddr_in6 {TYPE_4__ sin6_addr; int sin6_port; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; TYPE_1__ sin_addr; int sin_port; } ;
struct iw_cm_id {int (* add_ref ) (struct iw_cm_id*) ;int tos; struct i40iw_cm_listener* provider_data; int m_local_addr; int device; } ;
struct i40iw_device {int cm_core; } ;
struct i40iw_cm_listener {int qhash_set; TYPE_3__* cm_core; int reused_node; int user_pri; int tos; } ;
struct i40iw_cm_info {int ipv4; int backlog; void* loc_port; int user_pri; struct iw_cm_id* cm_id; int vlan_id; int * loc_addr; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
typedef int cm_info ;
struct TYPE_7__ {int stats_listen_created; } ;


 scalar_t__ AF_INET ;
 int EINVAL ;
 int ENOMEM ;
 int I40IW_MANAGE_APBVT_ADD ;
 int I40IW_QHASH_MANAGE_TYPE_ADD ;
 int I40IW_QHASH_TYPE_TCP_SYN ;
 scalar_t__ INADDR_ANY ;
 scalar_t__ IPV6_ADDR_ANY ;
 int i40iw_add_mqh_4 (struct i40iw_device*,struct i40iw_cm_info*,struct i40iw_cm_listener*) ;
 int i40iw_add_mqh_6 (struct i40iw_device*,struct i40iw_cm_info*,struct i40iw_cm_listener*) ;
 int i40iw_cm_del_listen (int *,void*,int) ;
 int i40iw_copy_ip_ntohl (int *,int ) ;
 int i40iw_get_vlan_ipv4 (int *) ;
 struct i40iw_cm_listener* i40iw_make_listen_node (int *,struct i40iw_device*,struct i40iw_cm_info*) ;
 int i40iw_manage_apbvt (struct i40iw_device*,void*,int ) ;
 int i40iw_manage_qhash (struct i40iw_device*,struct i40iw_cm_info*,int ,int ,int *,int) ;
 int i40iw_netdev_vlan_ipv6 (int *,int *) ;
 int i40iw_pr_err (char*) ;
 scalar_t__ ipv6_addr_type (TYPE_4__*) ;
 int memset (struct i40iw_cm_info*,int ,int) ;
 int ntohl (scalar_t__) ;
 void* ntohs (int ) ;
 int rt_tos2priority (int ) ;
 int stub1 (struct iw_cm_id*) ;
 struct i40iw_device* to_iwdev (int ) ;

int i40iw_create_listen(struct iw_cm_id *cm_id, int backlog)
{
 struct i40iw_device *iwdev;
 struct i40iw_cm_listener *cm_listen_node;
 struct i40iw_cm_info cm_info;
 enum i40iw_status_code ret;
 struct sockaddr_in *laddr;
 struct sockaddr_in6 *laddr6;
 bool wildcard = 0;

 iwdev = to_iwdev(cm_id->device);
 if (!iwdev)
  return -EINVAL;

 laddr = (struct sockaddr_in *)&cm_id->m_local_addr;
 laddr6 = (struct sockaddr_in6 *)&cm_id->m_local_addr;
 memset(&cm_info, 0, sizeof(cm_info));
 if (laddr->sin_family == AF_INET) {
  cm_info.ipv4 = 1;
  cm_info.loc_addr[0] = ntohl(laddr->sin_addr.s_addr);
  cm_info.loc_port = ntohs(laddr->sin_port);

  if (laddr->sin_addr.s_addr != INADDR_ANY)
   cm_info.vlan_id = i40iw_get_vlan_ipv4(cm_info.loc_addr);
  else
   wildcard = 1;

 } else {
  cm_info.ipv4 = 0;
  i40iw_copy_ip_ntohl(cm_info.loc_addr,
        laddr6->sin6_addr.in6_u.u6_addr32);
  cm_info.loc_port = ntohs(laddr6->sin6_port);
  if (ipv6_addr_type(&laddr6->sin6_addr) != IPV6_ADDR_ANY)
   i40iw_netdev_vlan_ipv6(cm_info.loc_addr,
            &cm_info.vlan_id);
  else
   wildcard = 1;
 }
 cm_info.backlog = backlog;
 cm_info.cm_id = cm_id;

 cm_listen_node = i40iw_make_listen_node(&iwdev->cm_core, iwdev, &cm_info);
 if (!cm_listen_node) {
  i40iw_pr_err("cm_listen_node == NULL\n");
  return -ENOMEM;
 }

 cm_id->provider_data = cm_listen_node;

 cm_listen_node->tos = cm_id->tos;
 cm_listen_node->user_pri = rt_tos2priority(cm_id->tos);
 cm_info.user_pri = cm_listen_node->user_pri;

 if (!cm_listen_node->reused_node) {
  if (wildcard) {
   if (cm_info.ipv4)
    ret = i40iw_add_mqh_4(iwdev,
            &cm_info,
            cm_listen_node);
   else
    ret = i40iw_add_mqh_6(iwdev,
            &cm_info,
            cm_listen_node);
   if (ret)
    goto error;

   ret = i40iw_manage_apbvt(iwdev,
       cm_info.loc_port,
       I40IW_MANAGE_APBVT_ADD);

   if (ret)
    goto error;
  } else {
   ret = i40iw_manage_qhash(iwdev,
       &cm_info,
       I40IW_QHASH_TYPE_TCP_SYN,
       I40IW_QHASH_MANAGE_TYPE_ADD,
       ((void*)0),
       1);
   if (ret)
    goto error;
   cm_listen_node->qhash_set = 1;
   ret = i40iw_manage_apbvt(iwdev,
       cm_info.loc_port,
       I40IW_MANAGE_APBVT_ADD);
   if (ret)
    goto error;
  }
 }
 cm_id->add_ref(cm_id);
 cm_listen_node->cm_core->stats_listen_created++;
 return 0;
 error:
 i40iw_cm_del_listen(&iwdev->cm_core, (void *)cm_listen_node, 0);
 return -EINVAL;
}
