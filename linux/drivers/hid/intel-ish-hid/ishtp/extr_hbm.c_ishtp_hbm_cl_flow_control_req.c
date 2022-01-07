
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_msg_hdr {int dummy; } ;
struct ishtp_device {int dummy; } ;
struct ishtp_cl {int fc_spinlock; int err_send_fc; int ts_max_fc_delay; scalar_t__ ts_rx; int ts_out_fc; int out_flow_ctrl_cnt; scalar_t__ out_flow_ctrl_creds; scalar_t__ recv_msg_num_frags; } ;
struct hbm_flow_control {int dummy; } ;
typedef int ktime_t ;
typedef int flow_ctrl ;


 int ISHTP_FLOW_CONTROL_CMD ;
 int ishtp_hbm_cl_hdr (struct ishtp_cl*,int ,struct hbm_flow_control*,size_t const) ;
 int ishtp_hbm_hdr (struct ishtp_msg_hdr*,size_t const) ;
 int ishtp_write_message (struct ishtp_device*,struct ishtp_msg_hdr*,struct hbm_flow_control*) ;
 scalar_t__ ktime_after (int ,int ) ;
 int ktime_get () ;
 int ktime_sub (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ishtp_hbm_cl_flow_control_req(struct ishtp_device *dev,
      struct ishtp_cl *cl)
{
 struct ishtp_msg_hdr hdr;
 struct hbm_flow_control flow_ctrl;
 const size_t len = sizeof(flow_ctrl);
 int rv;
 unsigned long flags;

 spin_lock_irqsave(&cl->fc_spinlock, flags);

 ishtp_hbm_hdr(&hdr, len);
 ishtp_hbm_cl_hdr(cl, ISHTP_FLOW_CONTROL_CMD, &flow_ctrl, len);





 if (cl->out_flow_ctrl_creds) {
  spin_unlock_irqrestore(&cl->fc_spinlock, flags);
  return 0;
 }

 cl->recv_msg_num_frags = 0;

 rv = ishtp_write_message(dev, &hdr, &flow_ctrl);
 if (!rv) {
  ++cl->out_flow_ctrl_creds;
  ++cl->out_flow_ctrl_cnt;
  cl->ts_out_fc = ktime_get();
  if (cl->ts_rx) {
   ktime_t ts_diff = ktime_sub(cl->ts_out_fc, cl->ts_rx);
   if (ktime_after(ts_diff, cl->ts_max_fc_delay))
    cl->ts_max_fc_delay = ts_diff;
  }
 } else {
  ++cl->err_send_fc;
 }

 spin_unlock_irqrestore(&cl->fc_spinlock, flags);
 return rv;
}
