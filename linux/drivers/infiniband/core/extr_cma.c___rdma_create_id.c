
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int net; } ;
struct TYPE_6__ {TYPE_1__ dev_addr; } ;
struct TYPE_7__ {TYPE_2__ addr; } ;
struct rdma_cm_id {int ps; int qp_type; TYPE_3__ route; int event_handler; void* context; } ;
struct TYPE_8__ {int type; } ;
struct rdma_id_private {int tos_set; int timeout_set; int seq_num; struct rdma_cm_id id; int mc_list; int listen_list; int handler_mutex; int refcount; int comp; int qp_mutex; int lock; int gid_type; int state; TYPE_4__ res; } ;
struct net {int dummy; } ;
typedef int rdma_cm_event_handler ;
typedef enum rdma_ucm_port_space { ____Placeholder_rdma_ucm_port_space } rdma_ucm_port_space ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;


 int ENOMEM ;
 struct rdma_cm_id* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IB_GID_TYPE_IB ;
 int INIT_LIST_HEAD (int *) ;
 int RDMA_CM_IDLE ;
 int RDMA_RESTRACK_CM_ID ;
 int atomic_set (int *,int) ;
 int get_net (struct net*) ;
 int get_random_bytes (int*,int) ;
 int init_completion (int *) ;
 struct rdma_id_private* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int rdma_restrack_set_task (TYPE_4__*,char const*) ;
 int spin_lock_init (int *) ;

struct rdma_cm_id *__rdma_create_id(struct net *net,
        rdma_cm_event_handler event_handler,
        void *context, enum rdma_ucm_port_space ps,
        enum ib_qp_type qp_type, const char *caller)
{
 struct rdma_id_private *id_priv;

 id_priv = kzalloc(sizeof *id_priv, GFP_KERNEL);
 if (!id_priv)
  return ERR_PTR(-ENOMEM);

 rdma_restrack_set_task(&id_priv->res, caller);
 id_priv->res.type = RDMA_RESTRACK_CM_ID;
 id_priv->state = RDMA_CM_IDLE;
 id_priv->id.context = context;
 id_priv->id.event_handler = event_handler;
 id_priv->id.ps = ps;
 id_priv->id.qp_type = qp_type;
 id_priv->tos_set = 0;
 id_priv->timeout_set = 0;
 id_priv->gid_type = IB_GID_TYPE_IB;
 spin_lock_init(&id_priv->lock);
 mutex_init(&id_priv->qp_mutex);
 init_completion(&id_priv->comp);
 atomic_set(&id_priv->refcount, 1);
 mutex_init(&id_priv->handler_mutex);
 INIT_LIST_HEAD(&id_priv->listen_list);
 INIT_LIST_HEAD(&id_priv->mc_list);
 get_random_bytes(&id_priv->seq_num, sizeof id_priv->seq_num);
 id_priv->id.route.addr.dev_addr.net = get_net(net);
 id_priv->seq_num &= 0x00ffffff;

 return &id_priv->id;
}
