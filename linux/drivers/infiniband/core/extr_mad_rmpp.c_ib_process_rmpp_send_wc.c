
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rmpp_type; } ;
struct ib_rmpp_mad {TYPE_2__ rmpp_hdr; } ;
struct TYPE_3__ {scalar_t__ seg_count; int timeout_ms; struct ib_rmpp_mad* mad; } ;
struct ib_mad_send_wr_private {scalar_t__ status; scalar_t__ last_ack; scalar_t__ seg_num; scalar_t__ newwin; TYPE_1__ send_buf; scalar_t__ timeout; } ;
struct ib_mad_send_wc {scalar_t__ status; } ;


 int IB_MGMT_RMPP_FLAG_ACTIVE ;
 scalar_t__ IB_MGMT_RMPP_TYPE_DATA ;
 int IB_RMPP_RESULT_CONSUMED ;
 int IB_RMPP_RESULT_INTERNAL ;
 int IB_RMPP_RESULT_PROCESSED ;
 int IB_RMPP_RESULT_UNHANDLED ;
 scalar_t__ IB_WC_GENERAL_ERR ;
 scalar_t__ IB_WC_SUCCESS ;
 int ib_get_rmpp_flags (TYPE_2__*) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int send_next_seg (struct ib_mad_send_wr_private*) ;

int ib_process_rmpp_send_wc(struct ib_mad_send_wr_private *mad_send_wr,
       struct ib_mad_send_wc *mad_send_wc)
{
 struct ib_rmpp_mad *rmpp_mad;
 int ret;

 rmpp_mad = mad_send_wr->send_buf.mad;
 if (!(ib_get_rmpp_flags(&rmpp_mad->rmpp_hdr) &
       IB_MGMT_RMPP_FLAG_ACTIVE))
  return IB_RMPP_RESULT_UNHANDLED;

 if (rmpp_mad->rmpp_hdr.rmpp_type != IB_MGMT_RMPP_TYPE_DATA)
  return IB_RMPP_RESULT_INTERNAL;

 if (mad_send_wc->status != IB_WC_SUCCESS ||
     mad_send_wr->status != IB_WC_SUCCESS)
  return IB_RMPP_RESULT_PROCESSED;

 if (!mad_send_wr->timeout)
  return IB_RMPP_RESULT_PROCESSED;

 if (mad_send_wr->last_ack == mad_send_wr->send_buf.seg_count) {
  mad_send_wr->timeout =
   msecs_to_jiffies(mad_send_wr->send_buf.timeout_ms);
  return IB_RMPP_RESULT_PROCESSED;
 }

 if (mad_send_wr->seg_num == mad_send_wr->newwin ||
     mad_send_wr->seg_num == mad_send_wr->send_buf.seg_count)
  return IB_RMPP_RESULT_PROCESSED;

 ret = send_next_seg(mad_send_wr);
 if (ret) {
  mad_send_wc->status = IB_WC_GENERAL_ERR;
  return IB_RMPP_RESULT_PROCESSED;
 }
 return IB_RMPP_RESULT_CONSUMED;
}
