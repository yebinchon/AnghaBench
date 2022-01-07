
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_puda_buf {int dummy; } ;
struct i40iw_cm_node {int state; int mpa_frame_rev; TYPE_1__* cm_id; int passive_state; } ;
struct TYPE_2__ {int (* rem_ref ) (TYPE_1__*) ;} ;
 int atomic_add_return (int,int *) ;
 int i40iw_active_open_err (struct i40iw_cm_node*,int) ;
 int i40iw_cleanup_retrans_entry (struct i40iw_cm_node*) ;
 int i40iw_passive_open_err (struct i40iw_cm_node*,int) ;
 int i40iw_pr_err (char*,int) ;
 int i40iw_rem_ref_cm_node (struct i40iw_cm_node*) ;
 int i40iw_send_syn (struct i40iw_cm_node*,int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void i40iw_handle_rst_pkt(struct i40iw_cm_node *cm_node,
     struct i40iw_puda_buf *rbuf)
{
 i40iw_cleanup_retrans_entry(cm_node);
 switch (cm_node->state) {
 case 131:
 case 134:
  switch (cm_node->mpa_frame_rev) {
  case 128:
   cm_node->mpa_frame_rev = 129;

   cm_node->state = 131;
   if (i40iw_send_syn(cm_node, 0))
    i40iw_active_open_err(cm_node, 0);
   break;
  case 129:
  default:
   i40iw_active_open_err(cm_node, 0);
   break;
  }
  break;
 case 135:
  atomic_add_return(1, &cm_node->passive_state);
  break;
 case 140:
 case 132:
 case 136:
  i40iw_pr_err("Bad state state = %d\n", cm_node->state);
  i40iw_passive_open_err(cm_node, 0);
  break;
 case 133:
  i40iw_active_open_err(cm_node, 0);
  break;
 case 141:
  break;
 case 138:
 case 139:
 case 137:
  cm_node->cm_id->rem_ref(cm_node->cm_id);

 case 130:
  cm_node->state = 141;
  i40iw_rem_ref_cm_node(cm_node);
  break;
 default:
  break;
 }
}
