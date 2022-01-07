
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_cm_node {int user_pri; int rem_port; int loc_port; int rem_addr; int loc_addr; int vlan_id; int ipv4; } ;
struct i40iw_cm_info {int user_pri; int rem_port; int loc_port; int rem_addr; int loc_addr; int vlan_id; int ipv4; } ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static void i40iw_get_addr_info(struct i40iw_cm_node *cm_node,
    struct i40iw_cm_info *cm_info)
{
 cm_info->ipv4 = cm_node->ipv4;
 cm_info->vlan_id = cm_node->vlan_id;
 memcpy(cm_info->loc_addr, cm_node->loc_addr, sizeof(cm_info->loc_addr));
 memcpy(cm_info->rem_addr, cm_node->rem_addr, sizeof(cm_info->rem_addr));
 cm_info->loc_port = cm_node->loc_port;
 cm_info->rem_port = cm_node->rem_port;
 cm_info->user_pri = cm_node->user_pri;
}
