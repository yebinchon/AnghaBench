
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mad_rmpp_recv {int newwin; int seg_num; int repwin; int base_version; int method; int class_version; int mgmt_class; int slid; int src_qp; int tid; scalar_t__ last_ack; TYPE_4__* cur_seg_buf; struct ib_mad_recv_wc* rmpp_wc; int refcount; int state; int lock; int cleanup_work; int timeout_work; int comp; struct ib_mad_agent_private* agent; int ah; } ;
struct TYPE_9__ {TYPE_3__* mad; int grh; } ;
struct ib_mad_recv_wc {TYPE_5__* wc; TYPE_4__ recv_buf; } ;
struct ib_mad_hdr {int base_version; int method; int class_version; int mgmt_class; int tid; } ;
struct TYPE_7__ {int port_num; TYPE_1__* qp; } ;
struct ib_mad_agent_private {TYPE_2__ agent; } ;
struct TYPE_10__ {int slid; int src_qp; } ;
struct TYPE_8__ {struct ib_mad_hdr mad_hdr; } ;
struct TYPE_6__ {int pd; } ;


 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int RMPP_STATE_ACTIVE ;
 int atomic_set (int *,int) ;
 int ib_create_ah_from_wc (int ,TYPE_5__*,int ,int ) ;
 int init_completion (int *) ;
 int kfree (struct mad_rmpp_recv*) ;
 struct mad_rmpp_recv* kmalloc (int,int ) ;
 int recv_cleanup_handler ;
 int recv_timeout_handler ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct mad_rmpp_recv *
create_rmpp_recv(struct ib_mad_agent_private *agent,
   struct ib_mad_recv_wc *mad_recv_wc)
{
 struct mad_rmpp_recv *rmpp_recv;
 struct ib_mad_hdr *mad_hdr;

 rmpp_recv = kmalloc(sizeof *rmpp_recv, GFP_KERNEL);
 if (!rmpp_recv)
  return ((void*)0);

 rmpp_recv->ah = ib_create_ah_from_wc(agent->agent.qp->pd,
          mad_recv_wc->wc,
          mad_recv_wc->recv_buf.grh,
          agent->agent.port_num);
 if (IS_ERR(rmpp_recv->ah))
  goto error;

 rmpp_recv->agent = agent;
 init_completion(&rmpp_recv->comp);
 INIT_DELAYED_WORK(&rmpp_recv->timeout_work, recv_timeout_handler);
 INIT_DELAYED_WORK(&rmpp_recv->cleanup_work, recv_cleanup_handler);
 spin_lock_init(&rmpp_recv->lock);
 rmpp_recv->state = RMPP_STATE_ACTIVE;
 atomic_set(&rmpp_recv->refcount, 1);

 rmpp_recv->rmpp_wc = mad_recv_wc;
 rmpp_recv->cur_seg_buf = &mad_recv_wc->recv_buf;
 rmpp_recv->newwin = 1;
 rmpp_recv->seg_num = 1;
 rmpp_recv->last_ack = 0;
 rmpp_recv->repwin = 1;

 mad_hdr = &mad_recv_wc->recv_buf.mad->mad_hdr;
 rmpp_recv->tid = mad_hdr->tid;
 rmpp_recv->src_qp = mad_recv_wc->wc->src_qp;
 rmpp_recv->slid = mad_recv_wc->wc->slid;
 rmpp_recv->mgmt_class = mad_hdr->mgmt_class;
 rmpp_recv->class_version = mad_hdr->class_version;
 rmpp_recv->method = mad_hdr->method;
 rmpp_recv->base_version = mad_hdr->base_version;
 return rmpp_recv;

error: kfree(rmpp_recv);
 return ((void*)0);
}
