
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct cdn_dp_port {int extcon; } ;
struct cdn_dp_device {size_t active_port; size_t ports; int dev; struct cdn_dp_port** port; } ;


 int CDN_DPCD_TIMEOUT_MS ;
 int DRM_DEV_ERROR (int ,char*) ;
 int EXTCON_DISP_DP ;
 int cdn_dp_get_sink_count (struct cdn_dp_device*,scalar_t__*) ;
 int extcon_get_state (int ,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static bool cdn_dp_check_sink_connection(struct cdn_dp_device *dp)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(CDN_DPCD_TIMEOUT_MS);
 struct cdn_dp_port *port;
 u8 sink_count = 0;

 if (dp->active_port < 0 || dp->active_port >= dp->ports) {
  DRM_DEV_ERROR(dp->dev, "active_port is wrong!\n");
  return 0;
 }

 port = dp->port[dp->active_port];







 while (time_before(jiffies, timeout)) {
  if (!extcon_get_state(port->extcon, EXTCON_DISP_DP))
   return 0;

  if (!cdn_dp_get_sink_count(dp, &sink_count))
   return sink_count ? 1 : 0;

  usleep_range(5000, 10000);
 }

 DRM_DEV_ERROR(dp->dev, "Get sink capability timed out\n");
 return 0;
}
