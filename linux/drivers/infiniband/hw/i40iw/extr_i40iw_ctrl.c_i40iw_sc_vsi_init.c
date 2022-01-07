
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i40iw_vsi_init_info {TYPE_1__* params; int exception_lan_queue; int back_vsi; int dev; } ;
struct i40iw_sc_vsi {TYPE_2__* qos; int dev; int exception_lan_queue; int mtu; int back_vsi; } ;
struct TYPE_4__ {int qplist; int lock; int qs_handle; } ;
struct TYPE_3__ {int * qs_handle_list; int mtu; } ;


 int I40IW_DEBUG_DCB ;
 int I40IW_MAX_USER_PRIORITY ;
 int INIT_LIST_HEAD (int *) ;
 int i40iw_debug (int ,int ,char*,int,int ) ;
 int i40iw_fill_qos_list (int *) ;
 int spin_lock_init (int *) ;

void i40iw_sc_vsi_init(struct i40iw_sc_vsi *vsi, struct i40iw_vsi_init_info *info)
{
 int i;

 vsi->dev = info->dev;
 vsi->back_vsi = info->back_vsi;
 vsi->mtu = info->params->mtu;
 vsi->exception_lan_queue = info->exception_lan_queue;
 i40iw_fill_qos_list(info->params->qs_handle_list);

 for (i = 0; i < I40IW_MAX_USER_PRIORITY; i++) {
  vsi->qos[i].qs_handle = info->params->qs_handle_list[i];
  i40iw_debug(vsi->dev, I40IW_DEBUG_DCB, "qset[%d]: %d\n", i,
       vsi->qos[i].qs_handle);
  spin_lock_init(&vsi->qos[i].lock);
  INIT_LIST_HEAD(&vsi->qos[i].qplist);
 }
}
