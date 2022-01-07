
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cdn_dp_device {int dev; } ;
typedef int msg ;


 int DPTX_SET_VIDEO ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int MB_MODULE_ID_DP_TX ;
 int cdn_dp_mailbox_send (struct cdn_dp_device*,int ,int ,int,int*) ;

int cdn_dp_set_video_status(struct cdn_dp_device *dp, int active)
{
 u8 msg;
 int ret;

 msg = !!active;

 ret = cdn_dp_mailbox_send(dp, MB_MODULE_ID_DP_TX, DPTX_SET_VIDEO,
      sizeof(msg), &msg);
 if (ret)
  DRM_DEV_ERROR(dp->dev, "set video status failed: %d\n", ret);

 return ret;
}
