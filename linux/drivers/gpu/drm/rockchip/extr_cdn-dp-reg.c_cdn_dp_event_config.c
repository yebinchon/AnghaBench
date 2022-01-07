
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cdn_dp_device {int dev; } ;
typedef int msg ;


 int DPTX_ENABLE_EVENT ;
 int DPTX_EVENT_ENABLE_HPD ;
 int DPTX_EVENT_ENABLE_TRAINING ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int MB_MODULE_ID_DP_TX ;
 int cdn_dp_mailbox_send (struct cdn_dp_device*,int ,int ,int,int*) ;
 int memset (int*,int ,int) ;

int cdn_dp_event_config(struct cdn_dp_device *dp)
{
 u8 msg[5];
 int ret;

 memset(msg, 0, sizeof(msg));

 msg[0] = DPTX_EVENT_ENABLE_HPD | DPTX_EVENT_ENABLE_TRAINING;

 ret = cdn_dp_mailbox_send(dp, MB_MODULE_ID_DP_TX, DPTX_ENABLE_EVENT,
      sizeof(msg), msg);
 if (ret)
  DRM_DEV_ERROR(dp->dev, "set event config failed: %d\n", ret);

 return ret;
}
