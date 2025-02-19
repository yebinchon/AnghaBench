
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct rdma_dev_addr {int bound_dev_if; int net; } ;
struct TYPE_9__ {struct rdma_dev_addr dev_addr; } ;
struct TYPE_10__ {TYPE_1__ addr; } ;
struct TYPE_14__ {size_t port_num; int (* event_handler ) (TYPE_6__*,struct rdma_cm_event*) ;int device; TYPE_2__ route; scalar_t__ qp; } ;
struct rdma_id_private {scalar_t__ state; int handler_mutex; TYPE_6__ id; TYPE_3__* cma_dev; int qp_mutex; } ;
struct TYPE_12__ {int qp_num; int ah_attr; int qkey; int private_data; } ;
struct TYPE_13__ {TYPE_4__ ud; } ;
struct rdma_cm_event {int status; TYPE_5__ param; void* event; } ;
struct net_device {int dummy; } ;
struct TYPE_15__ {int qkey; int mlid; int mgid; } ;
struct ib_sa_multicast {TYPE_8__ rec; struct cma_multicast* context; } ;
struct cma_multicast {int context; struct rdma_id_private* id_priv; } ;
typedef enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;
struct TYPE_11__ {int* default_gid_type; int device; } ;


 scalar_t__ RDMA_CM_ADDR_BOUND ;
 scalar_t__ RDMA_CM_ADDR_RESOLVED ;
 int RDMA_CM_DESTROYING ;
 void* RDMA_CM_EVENT_MULTICAST_ERROR ;
 void* RDMA_CM_EVENT_MULTICAST_JOIN ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int cma_exch (struct rdma_id_private*,int ) ;
 int cma_set_qkey (struct rdma_id_private*,int ) ;
 struct net_device* dev_get_by_index (int ,int ) ;
 int dev_put (struct net_device*) ;
 int ib_attach_mcast (scalar_t__,int *,int ) ;
 int ib_init_ah_from_mcmember (int ,size_t,TYPE_8__*,struct net_device*,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug_ratelimited (char*,int) ;
 int rdma_destroy_ah_attr (int *) ;
 int rdma_destroy_id (TYPE_6__*) ;
 size_t rdma_start_port (int ) ;
 int stub1 (TYPE_6__*,struct rdma_cm_event*) ;

__attribute__((used)) static int cma_ib_mc_handler(int status, struct ib_sa_multicast *multicast)
{
 struct rdma_id_private *id_priv;
 struct cma_multicast *mc = multicast->context;
 struct rdma_cm_event event = {};
 int ret = 0;

 id_priv = mc->id_priv;
 mutex_lock(&id_priv->handler_mutex);
 if (id_priv->state != RDMA_CM_ADDR_BOUND &&
     id_priv->state != RDMA_CM_ADDR_RESOLVED)
  goto out;

 if (!status)
  status = cma_set_qkey(id_priv, be32_to_cpu(multicast->rec.qkey));
 else
  pr_debug_ratelimited("RDMA CM: MULTICAST_ERROR: failed to join multicast. status %d\n",
         status);
 mutex_lock(&id_priv->qp_mutex);
 if (!status && id_priv->id.qp) {
  status = ib_attach_mcast(id_priv->id.qp, &multicast->rec.mgid,
      be16_to_cpu(multicast->rec.mlid));
  if (status)
   pr_debug_ratelimited("RDMA CM: MULTICAST_ERROR: failed to attach QP. status %d\n",
          status);
 }
 mutex_unlock(&id_priv->qp_mutex);

 event.status = status;
 event.param.ud.private_data = mc->context;
 if (!status) {
  struct rdma_dev_addr *dev_addr =
   &id_priv->id.route.addr.dev_addr;
  struct net_device *ndev =
   dev_get_by_index(dev_addr->net, dev_addr->bound_dev_if);
  enum ib_gid_type gid_type =
   id_priv->cma_dev->default_gid_type[id_priv->id.port_num -
   rdma_start_port(id_priv->cma_dev->device)];

  event.event = RDMA_CM_EVENT_MULTICAST_JOIN;
  ret = ib_init_ah_from_mcmember(id_priv->id.device,
            id_priv->id.port_num,
            &multicast->rec,
            ndev, gid_type,
            &event.param.ud.ah_attr);
  if (ret)
   event.event = RDMA_CM_EVENT_MULTICAST_ERROR;

  event.param.ud.qp_num = 0xFFFFFF;
  event.param.ud.qkey = be32_to_cpu(multicast->rec.qkey);
  if (ndev)
   dev_put(ndev);
 } else
  event.event = RDMA_CM_EVENT_MULTICAST_ERROR;

 ret = id_priv->id.event_handler(&id_priv->id, &event);

 rdma_destroy_ah_attr(&event.param.ud.ah_attr);
 if (ret) {
  cma_exch(id_priv, RDMA_CM_DESTROYING);
  mutex_unlock(&id_priv->handler_mutex);
  rdma_destroy_id(&id_priv->id);
  return 0;
 }

out:
 mutex_unlock(&id_priv->handler_mutex);
 return 0;
}
