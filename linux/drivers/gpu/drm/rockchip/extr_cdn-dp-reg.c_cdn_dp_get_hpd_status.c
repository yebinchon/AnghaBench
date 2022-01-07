
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cdn_dp_device {int dev; } ;
typedef int status ;


 int DPTX_HPD_STATE ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int MB_MODULE_ID_DP_TX ;
 int cdn_dp_mailbox_read_receive (struct cdn_dp_device*,int*,int) ;
 int cdn_dp_mailbox_send (struct cdn_dp_device*,int ,int ,int ,int *) ;
 int cdn_dp_mailbox_validate_receive (struct cdn_dp_device*,int ,int ,int) ;

int cdn_dp_get_hpd_status(struct cdn_dp_device *dp)
{
 u8 status;
 int ret;

 ret = cdn_dp_mailbox_send(dp, MB_MODULE_ID_DP_TX, DPTX_HPD_STATE,
      0, ((void*)0));
 if (ret)
  goto err_get_hpd;

 ret = cdn_dp_mailbox_validate_receive(dp, MB_MODULE_ID_DP_TX,
           DPTX_HPD_STATE, sizeof(status));
 if (ret)
  goto err_get_hpd;

 ret = cdn_dp_mailbox_read_receive(dp, &status, sizeof(status));
 if (ret)
  goto err_get_hpd;

 return status;

err_get_hpd:
 DRM_DEV_ERROR(dp->dev, "get hpd status failed: %d\n", ret);
 return ret;
}
