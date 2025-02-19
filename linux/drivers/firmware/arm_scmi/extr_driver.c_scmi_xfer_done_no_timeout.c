
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_xfer {int dummy; } ;
struct scmi_chan_info {int dummy; } ;
typedef int ktime_t ;


 scalar_t__ ktime_after (int ,int ) ;
 int ktime_get () ;
 scalar_t__ scmi_xfer_poll_done (struct scmi_chan_info const*,struct scmi_xfer*) ;

__attribute__((used)) static bool scmi_xfer_done_no_timeout(const struct scmi_chan_info *cinfo,
          struct scmi_xfer *xfer, ktime_t stop)
{
 ktime_t __cur = ktime_get();

 return scmi_xfer_poll_done(cinfo, xfer) || ktime_after(__cur, stop);
}
