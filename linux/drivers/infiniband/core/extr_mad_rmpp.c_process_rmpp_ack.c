
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int paylen_newwin; int seg_num; scalar_t__ rmpp_status; } ;
struct ib_rmpp_mad {TYPE_2__ rmpp_hdr; } ;
struct TYPE_7__ {int seg_count; int timeout_ms; } ;
struct ib_mad_send_wr_private {int last_ack; scalar_t__ status; int newwin; int refcount; int seg_num; TYPE_4__* mad_agent_priv; int agent_list; TYPE_3__ send_buf; int max_retries; int retries_left; scalar_t__ timeout; } ;
struct ib_mad_send_wc {TYPE_3__* send_buf; scalar_t__ vendor_err; scalar_t__ status; } ;
struct TYPE_5__ {scalar_t__ mad; } ;
struct ib_mad_recv_wc {TYPE_1__ recv_buf; } ;
struct ib_mad_agent_private {int lock; } ;
struct TYPE_8__ {int send_list; } ;


 int IB_MGMT_RMPP_STATUS_BAD_STATUS ;
 int IB_MGMT_RMPP_STATUS_S2B ;
 int IB_MGMT_RMPP_STATUS_W2S ;
 scalar_t__ IB_WC_SUCCESS ;
 int abort_send (struct ib_mad_agent_private*,struct ib_mad_recv_wc*,int ) ;
 int ack_ds_ack (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ;
 int adjust_last_ack (struct ib_mad_send_wr_private*,int) ;
 int be32_to_cpu (int ) ;
 struct ib_mad_send_wr_private* ib_find_send_mad (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ;
 int ib_mad_complete_send_wr (struct ib_mad_send_wr_private*,struct ib_mad_send_wc*) ;
 int ib_mark_mad_done (struct ib_mad_send_wr_private*) ;
 int ib_reset_mad_timeout (struct ib_mad_send_wr_private*,int ) ;
 int list_move_tail (int *,int *) ;
 int nack_recv (struct ib_mad_agent_private*,struct ib_mad_recv_wc*,int ) ;
 int process_ds_ack (struct ib_mad_agent_private*,struct ib_mad_recv_wc*,int) ;
 int send_next_seg (struct ib_mad_send_wr_private*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void process_rmpp_ack(struct ib_mad_agent_private *agent,
        struct ib_mad_recv_wc *mad_recv_wc)
{
 struct ib_mad_send_wr_private *mad_send_wr;
 struct ib_rmpp_mad *rmpp_mad;
 unsigned long flags;
 int seg_num, newwin, ret;

 rmpp_mad = (struct ib_rmpp_mad *)mad_recv_wc->recv_buf.mad;
 if (rmpp_mad->rmpp_hdr.rmpp_status) {
  abort_send(agent, mad_recv_wc, IB_MGMT_RMPP_STATUS_BAD_STATUS);
  nack_recv(agent, mad_recv_wc, IB_MGMT_RMPP_STATUS_BAD_STATUS);
  return;
 }

 seg_num = be32_to_cpu(rmpp_mad->rmpp_hdr.seg_num);
 newwin = be32_to_cpu(rmpp_mad->rmpp_hdr.paylen_newwin);
 if (newwin < seg_num) {
  abort_send(agent, mad_recv_wc, IB_MGMT_RMPP_STATUS_W2S);
  nack_recv(agent, mad_recv_wc, IB_MGMT_RMPP_STATUS_W2S);
  return;
 }

 spin_lock_irqsave(&agent->lock, flags);
 mad_send_wr = ib_find_send_mad(agent, mad_recv_wc);
 if (!mad_send_wr) {
  if (!seg_num)
   process_ds_ack(agent, mad_recv_wc, newwin);
  goto out;
 }

 if ((mad_send_wr->last_ack == mad_send_wr->send_buf.seg_count) &&
     (mad_send_wr->timeout)) {
  spin_unlock_irqrestore(&agent->lock, flags);
  ack_ds_ack(agent, mad_recv_wc);
  return;
 }

 if ((mad_send_wr->last_ack == mad_send_wr->send_buf.seg_count) ||
     (!mad_send_wr->timeout) || (mad_send_wr->status != IB_WC_SUCCESS))
  goto out;

 if (seg_num > mad_send_wr->send_buf.seg_count ||
     seg_num > mad_send_wr->newwin) {
  spin_unlock_irqrestore(&agent->lock, flags);
  abort_send(agent, mad_recv_wc, IB_MGMT_RMPP_STATUS_S2B);
  nack_recv(agent, mad_recv_wc, IB_MGMT_RMPP_STATUS_S2B);
  return;
 }

 if (newwin < mad_send_wr->newwin || seg_num < mad_send_wr->last_ack)
  goto out;

 if (seg_num > mad_send_wr->last_ack) {
  adjust_last_ack(mad_send_wr, seg_num);
  mad_send_wr->retries_left = mad_send_wr->max_retries;
 }
 mad_send_wr->newwin = newwin;
 if (mad_send_wr->last_ack == mad_send_wr->send_buf.seg_count) {

  if (!mad_send_wr->send_buf.timeout_ms) {
   struct ib_mad_send_wc wc;

   ib_mark_mad_done(mad_send_wr);
   spin_unlock_irqrestore(&agent->lock, flags);

   wc.status = IB_WC_SUCCESS;
   wc.vendor_err = 0;
   wc.send_buf = &mad_send_wr->send_buf;
   ib_mad_complete_send_wr(mad_send_wr, &wc);
   return;
  }
  if (mad_send_wr->refcount == 1)
   ib_reset_mad_timeout(mad_send_wr,
          mad_send_wr->send_buf.timeout_ms);
  spin_unlock_irqrestore(&agent->lock, flags);
  ack_ds_ack(agent, mad_recv_wc);
  return;
 } else if (mad_send_wr->refcount == 1 &&
     mad_send_wr->seg_num < mad_send_wr->newwin &&
     mad_send_wr->seg_num < mad_send_wr->send_buf.seg_count) {

  ret = send_next_seg(mad_send_wr);
  if (ret)
   goto out;

  mad_send_wr->refcount++;
  list_move_tail(&mad_send_wr->agent_list,
         &mad_send_wr->mad_agent_priv->send_list);
 }
out:
 spin_unlock_irqrestore(&agent->lock, flags);
}
