
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdn_dp_device {int dev; } ;


 int DP_VB_ID ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int cdn_dp_reg_write_bit (struct cdn_dp_device*,int ,int,int,int) ;

int cdn_dp_audio_mute(struct cdn_dp_device *dp, bool enable)
{
 int ret;

 ret = cdn_dp_reg_write_bit(dp, DP_VB_ID, 4, 1, enable);
 if (ret)
  DRM_DEV_ERROR(dp->dev, "audio mute failed: %d\n", ret);

 return ret;
}
