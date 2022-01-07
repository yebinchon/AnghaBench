
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_cm_node {int state; int send_entry; } ;


 int EINVAL ;
 int i40iw_cleanup_retrans_entry (struct i40iw_cm_node*) ;
 int i40iw_pr_err (char*) ;
 int i40iw_rem_ref_cm_node (struct i40iw_cm_node*) ;
 int i40iw_send_fin (struct i40iw_cm_node*) ;
 int i40iw_send_reset (struct i40iw_cm_node*) ;

__attribute__((used)) static int i40iw_cm_close(struct i40iw_cm_node *cm_node)
{
 int ret = 0;

 if (!cm_node)
  return -EINVAL;

 switch (cm_node->state) {
 case 131:
 case 130:
 case 132:
 case 143:
 case 147:
 case 134:
 case 135:
  i40iw_cleanup_retrans_entry(cm_node);
  i40iw_send_reset(cm_node);
  break;
 case 145:
  cm_node->state = 139;
  i40iw_send_fin(cm_node);
  break;
 case 142:
 case 141:
 case 139:
 case 129:
 case 144:
  ret = -1;
  break;
 case 137:
  i40iw_cleanup_retrans_entry(cm_node);
  i40iw_send_reset(cm_node);
  break;
 case 136:
 case 128:
 case 140:
 case 146:
 case 138:
  i40iw_rem_ref_cm_node(cm_node);
  break;
 case 133:
  if (cm_node->send_entry)
   i40iw_pr_err("send_entry\n");
  i40iw_rem_ref_cm_node(cm_node);
  break;
 }
 return ret;
}
