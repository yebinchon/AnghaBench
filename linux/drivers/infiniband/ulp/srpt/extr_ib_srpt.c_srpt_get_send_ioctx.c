
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int map_tag; int map_cpu; } ;
struct srpt_send_ioctx {int queue_status_only; TYPE_2__ cmd; TYPE_2__ sense_data; scalar_t__ n_rw_ctx; scalar_t__ n_rdma; int recv_ioctx; int state; struct srpt_rdma_ch* ch; } ;
struct srpt_rdma_ch {struct srpt_send_ioctx** ioctx_ring; TYPE_1__* sess; } ;
struct TYPE_3__ {int sess_tag_pool; } ;


 int BUG_ON (int) ;
 int SRPT_STATE_NEW ;
 int WARN_ON_ONCE (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int sbitmap_queue_get (int *,int*) ;

__attribute__((used)) static struct srpt_send_ioctx *srpt_get_send_ioctx(struct srpt_rdma_ch *ch)
{
 struct srpt_send_ioctx *ioctx;
 int tag, cpu;

 BUG_ON(!ch);

 tag = sbitmap_queue_get(&ch->sess->sess_tag_pool, &cpu);
 if (tag < 0)
  return ((void*)0);

 ioctx = ch->ioctx_ring[tag];
 BUG_ON(ioctx->ch != ch);
 ioctx->state = SRPT_STATE_NEW;
 WARN_ON_ONCE(ioctx->recv_ioctx);
 ioctx->n_rdma = 0;
 ioctx->n_rw_ctx = 0;
 ioctx->queue_status_only = 0;




 memset(&ioctx->cmd, 0, sizeof(ioctx->cmd));
 memset(&ioctx->sense_data, 0, sizeof(ioctx->sense_data));
 ioctx->cmd.map_tag = tag;
 ioctx->cmd.map_cpu = cpu;

 return ioctx;
}
