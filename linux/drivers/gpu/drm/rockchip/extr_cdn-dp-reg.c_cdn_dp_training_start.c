
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cdn_dp_device {int dev; } ;
typedef int msg ;
typedef int event ;


 int DPTX_READ_EVENT ;
 int DPTX_TRAINING_CONTROL ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int EQ_PHASE_FINISHED ;
 int ETIMEDOUT ;
 int LINK_TRAINING_RETRY_MS ;
 int LINK_TRAINING_RUN ;
 int LINK_TRAINING_TIMEOUT_MS ;
 int MB_MODULE_ID_DP_TX ;
 int cdn_dp_mailbox_read_receive (struct cdn_dp_device*,int*,int) ;
 int cdn_dp_mailbox_send (struct cdn_dp_device*,int ,int ,int,int*) ;
 int cdn_dp_mailbox_validate_receive (struct cdn_dp_device*,int ,int ,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int cdn_dp_training_start(struct cdn_dp_device *dp)
{
 unsigned long timeout;
 u8 msg, event[2];
 int ret;

 msg = LINK_TRAINING_RUN;


 ret = cdn_dp_mailbox_send(dp, MB_MODULE_ID_DP_TX, DPTX_TRAINING_CONTROL,
      sizeof(msg), &msg);
 if (ret)
  goto err_training_start;

 timeout = jiffies + msecs_to_jiffies(LINK_TRAINING_TIMEOUT_MS);
 while (time_before(jiffies, timeout)) {
  msleep(LINK_TRAINING_RETRY_MS);
  ret = cdn_dp_mailbox_send(dp, MB_MODULE_ID_DP_TX,
       DPTX_READ_EVENT, 0, ((void*)0));
  if (ret)
   goto err_training_start;

  ret = cdn_dp_mailbox_validate_receive(dp, MB_MODULE_ID_DP_TX,
            DPTX_READ_EVENT,
            sizeof(event));
  if (ret)
   goto err_training_start;

  ret = cdn_dp_mailbox_read_receive(dp, event, sizeof(event));
  if (ret)
   goto err_training_start;

  if (event[1] & EQ_PHASE_FINISHED)
   return 0;
 }

 ret = -ETIMEDOUT;

err_training_start:
 DRM_DEV_ERROR(dp->dev, "training failed: %d\n", ret);
 return ret;
}
