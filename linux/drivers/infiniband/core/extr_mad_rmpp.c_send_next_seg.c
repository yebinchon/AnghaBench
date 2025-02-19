
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {void* paylen_newwin; int rmpp_rtime_flags; void* seg_num; } ;
struct ib_rmpp_mad {TYPE_2__ rmpp_hdr; } ;
struct TYPE_3__ {int seg_count; int seg_rmpp_size; int timeout_ms; struct ib_rmpp_mad* mad; } ;
struct ib_mad_send_wr_private {int seg_num; int pad; int timeout; TYPE_1__ send_buf; } ;


 int IB_MGMT_RMPP_FLAG_ACTIVE ;
 int IB_MGMT_RMPP_FLAG_FIRST ;
 int IB_MGMT_RMPP_FLAG_LAST ;
 void* cpu_to_be32 (int) ;
 int ib_send_mad (struct ib_mad_send_wr_private*) ;
 int ib_set_rmpp_flags (TYPE_2__*,int ) ;
 int msecs_to_jiffies (int) ;

__attribute__((used)) static int send_next_seg(struct ib_mad_send_wr_private *mad_send_wr)
{
 struct ib_rmpp_mad *rmpp_mad;
 int timeout;
 u32 paylen = 0;

 rmpp_mad = mad_send_wr->send_buf.mad;
 ib_set_rmpp_flags(&rmpp_mad->rmpp_hdr, IB_MGMT_RMPP_FLAG_ACTIVE);
 rmpp_mad->rmpp_hdr.seg_num = cpu_to_be32(++mad_send_wr->seg_num);

 if (mad_send_wr->seg_num == 1) {
  rmpp_mad->rmpp_hdr.rmpp_rtime_flags |= IB_MGMT_RMPP_FLAG_FIRST;
  paylen = (mad_send_wr->send_buf.seg_count *
     mad_send_wr->send_buf.seg_rmpp_size) -
     mad_send_wr->pad;
 }

 if (mad_send_wr->seg_num == mad_send_wr->send_buf.seg_count) {
  rmpp_mad->rmpp_hdr.rmpp_rtime_flags |= IB_MGMT_RMPP_FLAG_LAST;
  paylen = mad_send_wr->send_buf.seg_rmpp_size - mad_send_wr->pad;
 }
 rmpp_mad->rmpp_hdr.paylen_newwin = cpu_to_be32(paylen);


 timeout = mad_send_wr->send_buf.timeout_ms;
 if (!timeout || timeout > 2000)
  mad_send_wr->timeout = msecs_to_jiffies(2000);

 return ib_send_mad(mad_send_wr);
}
