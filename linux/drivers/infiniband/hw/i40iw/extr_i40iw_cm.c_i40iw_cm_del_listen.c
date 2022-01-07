
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_cm_listener {int * cm_id; int listener_state; } ;
struct i40iw_cm_core {int dummy; } ;


 int I40IW_CM_LISTENER_PASSIVE_STATE ;
 int i40iw_dec_refcnt_listen (struct i40iw_cm_core*,struct i40iw_cm_listener*,int,int) ;

__attribute__((used)) static int i40iw_cm_del_listen(struct i40iw_cm_core *cm_core,
          struct i40iw_cm_listener *listener,
          bool apbvt_del)
{
 listener->listener_state = I40IW_CM_LISTENER_PASSIVE_STATE;
 listener->cm_id = ((void*)0);
 return i40iw_dec_refcnt_listen(cm_core, listener, 1, apbvt_del);
}
