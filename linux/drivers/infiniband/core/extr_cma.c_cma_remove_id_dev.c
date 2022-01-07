
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* event_handler ) (TYPE_1__*,struct rdma_cm_event*) ;} ;
struct rdma_id_private {int handler_mutex; TYPE_1__ id; } ;
struct rdma_cm_event {int event; } ;
typedef enum rdma_cm_state { ____Placeholder_rdma_cm_state } rdma_cm_state ;


 int RDMA_CM_DESTROYING ;
 int RDMA_CM_DEVICE_REMOVAL ;
 int RDMA_CM_EVENT_DEVICE_REMOVAL ;
 int cma_cancel_operation (struct rdma_id_private*,int) ;
 int cma_comp (struct rdma_id_private*,int ) ;
 int cma_exch (struct rdma_id_private*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_1__*,struct rdma_cm_event*) ;

__attribute__((used)) static int cma_remove_id_dev(struct rdma_id_private *id_priv)
{
 struct rdma_cm_event event = {};
 enum rdma_cm_state state;
 int ret = 0;


 state = cma_exch(id_priv, RDMA_CM_DEVICE_REMOVAL);
 if (state == RDMA_CM_DESTROYING)
  return 0;

 cma_cancel_operation(id_priv, state);
 mutex_lock(&id_priv->handler_mutex);


 if (!cma_comp(id_priv, RDMA_CM_DEVICE_REMOVAL))
  goto out;

 event.event = RDMA_CM_EVENT_DEVICE_REMOVAL;
 ret = id_priv->id.event_handler(&id_priv->id, &event);
out:
 mutex_unlock(&id_priv->handler_mutex);
 return ret;
}
