
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_10__ {int sc_cqp; } ;
struct i40iw_device {TYPE_5__ cqp; } ;
struct i40iw_add_arp_cache_entry_info {int permanent; int mac_addr; int arp_index; } ;
struct TYPE_7__ {uintptr_t scratch; int * cqp; struct i40iw_add_arp_cache_entry_info info; } ;
struct TYPE_6__ {uintptr_t scratch; int arp_index; int * cqp; } ;
struct TYPE_8__ {TYPE_2__ add_arp_cache_entry; TYPE_1__ del_arp_cache_entry; } ;
struct TYPE_9__ {TYPE_3__ u; } ;
struct cqp_commands_info {int post_sq; TYPE_4__ in; int cqp_cmd; } ;
struct i40iw_cqp_request {struct cqp_commands_info info; } ;


 scalar_t__ I40IW_ARP_ADD ;
 int OP_ADD_ARP_CACHE_ENTRY ;
 int OP_DELETE_ARP_CACHE_ENTRY ;
 int cpu_to_le16 (int ) ;
 int ether_addr_copy (int ,unsigned char*) ;
 int i40iw_arp_table (struct i40iw_device*,scalar_t__*,int,unsigned char*,scalar_t__) ;
 struct i40iw_cqp_request* i40iw_get_cqp_request (TYPE_5__*,int) ;
 scalar_t__ i40iw_handle_cqp_op (struct i40iw_device*,struct i40iw_cqp_request*) ;
 int i40iw_pr_err (char*) ;
 int memset (struct i40iw_add_arp_cache_entry_info*,int ,int) ;

void i40iw_manage_arp_cache(struct i40iw_device *iwdev,
       unsigned char *mac_addr,
       u32 *ip_addr,
       bool ipv4,
       u32 action)
{
 struct i40iw_add_arp_cache_entry_info *info;
 struct i40iw_cqp_request *cqp_request;
 struct cqp_commands_info *cqp_info;
 int arp_index;

 arp_index = i40iw_arp_table(iwdev, ip_addr, ipv4, mac_addr, action);
 if (arp_index == -1)
  return;
 cqp_request = i40iw_get_cqp_request(&iwdev->cqp, 0);
 if (!cqp_request)
  return;

 cqp_info = &cqp_request->info;
 if (action == I40IW_ARP_ADD) {
  cqp_info->cqp_cmd = OP_ADD_ARP_CACHE_ENTRY;
  info = &cqp_info->in.u.add_arp_cache_entry.info;
  memset(info, 0, sizeof(*info));
  info->arp_index = cpu_to_le16((u16)arp_index);
  info->permanent = 1;
  ether_addr_copy(info->mac_addr, mac_addr);
  cqp_info->in.u.add_arp_cache_entry.scratch = (uintptr_t)cqp_request;
  cqp_info->in.u.add_arp_cache_entry.cqp = &iwdev->cqp.sc_cqp;
 } else {
  cqp_info->cqp_cmd = OP_DELETE_ARP_CACHE_ENTRY;
  cqp_info->in.u.del_arp_cache_entry.scratch = (uintptr_t)cqp_request;
  cqp_info->in.u.del_arp_cache_entry.cqp = &iwdev->cqp.sc_cqp;
  cqp_info->in.u.del_arp_cache_entry.arp_index = arp_index;
 }

 cqp_info->in.u.add_arp_cache_entry.cqp = &iwdev->cqp.sc_cqp;
 cqp_info->in.u.add_arp_cache_entry.scratch = (uintptr_t)cqp_request;
 cqp_info->post_sq = 1;
 if (i40iw_handle_cqp_op(iwdev, cqp_request))
  i40iw_pr_err("CQP-OP Add/Del Arp Cache entry fail");
}
