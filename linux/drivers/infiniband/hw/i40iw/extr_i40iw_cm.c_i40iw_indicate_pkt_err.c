
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_cm_node {int state; } ;







 int i40iw_active_open_err (struct i40iw_cm_node*,int) ;
 int i40iw_passive_open_err (struct i40iw_cm_node*,int) ;

__attribute__((used)) static void i40iw_indicate_pkt_err(struct i40iw_cm_node *cm_node)
{
 switch (cm_node->state) {
 case 128:
 case 131:
  i40iw_active_open_err(cm_node, 1);
  break;
 case 132:
 case 129:
  i40iw_passive_open_err(cm_node, 1);
  break;
 case 130:
 default:
  break;
 }
}
