
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct timespec64 {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct hsi_msg {scalar_t__ status; struct cs_hsi_iface* context; } ;
struct cs_timestamp {void* tv_nsec; void* tv_sec; } ;
struct cs_hsi_iface {int flags; int lock; TYPE_2__* mmap_cfg; TYPE_1__* cl; int control_state; } ;
typedef void* __u32 ;
struct TYPE_4__ {struct cs_timestamp tstamp_rx_ctrl; } ;
struct TYPE_3__ {int device; } ;


 int CS_FEAT_TSTAMP_RX_CTRL ;
 scalar_t__ HSI_STATUS_ERROR ;
 int SSI_CHANNEL_STATE_READING ;
 int cs_get_cmd (struct hsi_msg*) ;
 int cs_hsi_control_read_error (struct cs_hsi_iface*,struct hsi_msg*) ;
 int cs_hsi_read_on_control (struct cs_hsi_iface*) ;
 int cs_notify_control (int ) ;
 int cs_release_cmd (struct hsi_msg*) ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*) ;
 int ktime_get_ts64 (struct timespec64*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cs_hsi_read_on_control_complete(struct hsi_msg *msg)
{
 u32 cmd = cs_get_cmd(msg);
 struct cs_hsi_iface *hi = msg->context;

 spin_lock(&hi->lock);
 hi->control_state &= ~SSI_CHANNEL_STATE_READING;
 if (msg->status == HSI_STATUS_ERROR) {
  dev_err(&hi->cl->device, "Control RX error detected\n");
  spin_unlock(&hi->lock);
  cs_hsi_control_read_error(hi, msg);
  goto out;
 }
 dev_dbg(&hi->cl->device, "Read on control: %08X\n", cmd);
 cs_release_cmd(msg);
 if (hi->flags & CS_FEAT_TSTAMP_RX_CTRL) {
  struct timespec64 tspec;
  struct cs_timestamp *tstamp =
   &hi->mmap_cfg->tstamp_rx_ctrl;

  ktime_get_ts64(&tspec);

  tstamp->tv_sec = (__u32) tspec.tv_sec;
  tstamp->tv_nsec = (__u32) tspec.tv_nsec;
 }
 spin_unlock(&hi->lock);

 cs_notify_control(cmd);

out:
 cs_hsi_read_on_control(hi);
}
