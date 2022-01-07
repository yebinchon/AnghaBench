
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cdn_dp_device {int dev; } ;
typedef int reg ;
typedef int msg ;


 int DPTX_WRITE_DPCD ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int EINVAL ;
 int MB_MODULE_ID_DP_TX ;
 int cdn_dp_mailbox_read_receive (struct cdn_dp_device*,int*,int) ;
 int cdn_dp_mailbox_send (struct cdn_dp_device*,int ,int ,int,int*) ;
 int cdn_dp_mailbox_validate_receive (struct cdn_dp_device*,int ,int ,int) ;

int cdn_dp_dpcd_write(struct cdn_dp_device *dp, u32 addr, u8 value)
{
 u8 msg[6], reg[5];
 int ret;

 msg[0] = 0;
 msg[1] = 1;
 msg[2] = (addr >> 16) & 0xff;
 msg[3] = (addr >> 8) & 0xff;
 msg[4] = addr & 0xff;
 msg[5] = value;
 ret = cdn_dp_mailbox_send(dp, MB_MODULE_ID_DP_TX, DPTX_WRITE_DPCD,
      sizeof(msg), msg);
 if (ret)
  goto err_dpcd_write;

 ret = cdn_dp_mailbox_validate_receive(dp, MB_MODULE_ID_DP_TX,
           DPTX_WRITE_DPCD, sizeof(reg));
 if (ret)
  goto err_dpcd_write;

 ret = cdn_dp_mailbox_read_receive(dp, reg, sizeof(reg));
 if (ret)
  goto err_dpcd_write;

 if (addr != (reg[2] << 16 | reg[3] << 8 | reg[4]))
  ret = -EINVAL;

err_dpcd_write:
 if (ret)
  DRM_DEV_ERROR(dp->dev, "dpcd write failed: %d\n", ret);
 return ret;
}
