
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
typedef struct sockaddr_storage sockaddr ;
struct TYPE_3__ {scalar_t__ (* event_handler ) (TYPE_1__*,struct rdma_cm_event*) ;} ;
struct rdma_id_private {int handler_mutex; TYPE_1__ id; int cma_dev; } ;
struct rdma_dev_addr {int dummy; } ;
struct rdma_cm_event {int status; int event; } ;


 int RDMA_CM_ADDR_BOUND ;
 int RDMA_CM_ADDR_QUERY ;
 int RDMA_CM_ADDR_RESOLVED ;
 int RDMA_CM_DESTROYING ;
 int RDMA_CM_EVENT_ADDR_ERROR ;
 int RDMA_CM_EVENT_ADDR_RESOLVED ;
 int cma_acquire_dev_by_src_ip (struct rdma_id_private*) ;
 int cma_comp_exch (struct rdma_id_private*,int ,int ) ;
 int cma_exch (struct rdma_id_private*,int ) ;
 struct sockaddr_storage* cma_src_addr (struct rdma_id_private*) ;
 int memcpy (struct sockaddr_storage*,struct sockaddr_storage*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug_ratelimited (char*,int) ;
 int rdma_addr_size (struct sockaddr_storage*) ;
 int rdma_destroy_id (TYPE_1__*) ;
 scalar_t__ stub1 (TYPE_1__*,struct rdma_cm_event*) ;

__attribute__((used)) static void addr_handler(int status, struct sockaddr *src_addr,
    struct rdma_dev_addr *dev_addr, void *context)
{
 struct rdma_id_private *id_priv = context;
 struct rdma_cm_event event = {};
 struct sockaddr *addr;
 struct sockaddr_storage old_addr;

 mutex_lock(&id_priv->handler_mutex);
 if (!cma_comp_exch(id_priv, RDMA_CM_ADDR_QUERY,
      RDMA_CM_ADDR_RESOLVED))
  goto out;






 addr = cma_src_addr(id_priv);
 memcpy(&old_addr, addr, rdma_addr_size(addr));
 memcpy(addr, src_addr, rdma_addr_size(src_addr));
 if (!status && !id_priv->cma_dev) {
  status = cma_acquire_dev_by_src_ip(id_priv);
  if (status)
   pr_debug_ratelimited("RDMA CM: ADDR_ERROR: failed to acquire device. status %d\n",
          status);
 } else if (status) {
  pr_debug_ratelimited("RDMA CM: ADDR_ERROR: failed to resolve IP. status %d\n", status);
 }

 if (status) {
  memcpy(addr, &old_addr,
         rdma_addr_size((struct sockaddr *)&old_addr));
  if (!cma_comp_exch(id_priv, RDMA_CM_ADDR_RESOLVED,
       RDMA_CM_ADDR_BOUND))
   goto out;
  event.event = RDMA_CM_EVENT_ADDR_ERROR;
  event.status = status;
 } else
  event.event = RDMA_CM_EVENT_ADDR_RESOLVED;

 if (id_priv->id.event_handler(&id_priv->id, &event)) {
  cma_exch(id_priv, RDMA_CM_DESTROYING);
  mutex_unlock(&id_priv->handler_mutex);
  rdma_destroy_id(&id_priv->id);
  return;
 }
out:
 mutex_unlock(&id_priv->handler_mutex);
}
