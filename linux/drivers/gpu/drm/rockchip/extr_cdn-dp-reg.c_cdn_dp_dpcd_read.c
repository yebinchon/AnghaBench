
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct cdn_dp_device {int dummy; } ;
typedef int reg ;
typedef int msg ;


 int DPTX_READ_DPCD ;
 int MB_MODULE_ID_DP_TX ;
 int cdn_dp_mailbox_read_receive (struct cdn_dp_device*,int*,int) ;
 int cdn_dp_mailbox_send (struct cdn_dp_device*,int ,int ,int,int*) ;
 int cdn_dp_mailbox_validate_receive (struct cdn_dp_device*,int ,int ,int) ;

int cdn_dp_dpcd_read(struct cdn_dp_device *dp, u32 addr, u8 *data, u16 len)
{
 u8 msg[5], reg[5];
 int ret;

 msg[0] = (len >> 8) & 0xff;
 msg[1] = len & 0xff;
 msg[2] = (addr >> 16) & 0xff;
 msg[3] = (addr >> 8) & 0xff;
 msg[4] = addr & 0xff;
 ret = cdn_dp_mailbox_send(dp, MB_MODULE_ID_DP_TX, DPTX_READ_DPCD,
      sizeof(msg), msg);
 if (ret)
  goto err_dpcd_read;

 ret = cdn_dp_mailbox_validate_receive(dp, MB_MODULE_ID_DP_TX,
           DPTX_READ_DPCD,
           sizeof(reg) + len);
 if (ret)
  goto err_dpcd_read;

 ret = cdn_dp_mailbox_read_receive(dp, reg, sizeof(reg));
 if (ret)
  goto err_dpcd_read;

 ret = cdn_dp_mailbox_read_receive(dp, data, len);

err_dpcd_read:
 return ret;
}
