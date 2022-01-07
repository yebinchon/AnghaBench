
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdn_dp_device {int connector; int edid; int dev; int dpcd; } ;


 int DP_DPCD_REV ;
 int DP_RECEIVER_CAP_SIZE ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int ENODEV ;
 int cdn_dp_check_sink_connection (struct cdn_dp_device*) ;
 int cdn_dp_dpcd_read (struct cdn_dp_device*,int ,int ,int ) ;
 int cdn_dp_get_edid_block ;
 int drm_do_get_edid (int *,int ,struct cdn_dp_device*) ;
 int kfree (int ) ;

__attribute__((used)) static int cdn_dp_get_sink_capability(struct cdn_dp_device *dp)
{
 int ret;

 if (!cdn_dp_check_sink_connection(dp))
  return -ENODEV;

 ret = cdn_dp_dpcd_read(dp, DP_DPCD_REV, dp->dpcd,
          DP_RECEIVER_CAP_SIZE);
 if (ret) {
  DRM_DEV_ERROR(dp->dev, "Failed to get caps %d\n", ret);
  return ret;
 }

 kfree(dp->edid);
 dp->edid = drm_do_get_edid(&dp->connector,
       cdn_dp_get_edid_block, dp);
 return 0;
}
