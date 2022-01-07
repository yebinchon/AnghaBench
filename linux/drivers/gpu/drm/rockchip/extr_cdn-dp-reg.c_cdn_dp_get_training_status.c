
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int num_lanes; int rate; } ;
struct cdn_dp_device {int dev; TYPE_1__ link; } ;
typedef int status ;


 int DPTX_READ_LINK_STAT ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int MB_MODULE_ID_DP_TX ;
 int cdn_dp_mailbox_read_receive (struct cdn_dp_device*,int *,int) ;
 int cdn_dp_mailbox_send (struct cdn_dp_device*,int ,int ,int ,int *) ;
 int cdn_dp_mailbox_validate_receive (struct cdn_dp_device*,int ,int ,int) ;
 int drm_dp_bw_code_to_link_rate (int ) ;

__attribute__((used)) static int cdn_dp_get_training_status(struct cdn_dp_device *dp)
{
 u8 status[10];
 int ret;

 ret = cdn_dp_mailbox_send(dp, MB_MODULE_ID_DP_TX, DPTX_READ_LINK_STAT,
      0, ((void*)0));
 if (ret)
  goto err_get_training_status;

 ret = cdn_dp_mailbox_validate_receive(dp, MB_MODULE_ID_DP_TX,
           DPTX_READ_LINK_STAT,
           sizeof(status));
 if (ret)
  goto err_get_training_status;

 ret = cdn_dp_mailbox_read_receive(dp, status, sizeof(status));
 if (ret)
  goto err_get_training_status;

 dp->link.rate = drm_dp_bw_code_to_link_rate(status[0]);
 dp->link.num_lanes = status[1];

err_get_training_status:
 if (ret)
  DRM_DEV_ERROR(dp->dev, "get training status failed: %d\n", ret);
 return ret;
}
