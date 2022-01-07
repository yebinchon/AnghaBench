
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620 {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int BIT_MDT_XMIT_CTRL_EN ;
 int BIT_MDT_XMIT_CTRL_FIXED_BURST_LEN ;
 int MHL_BURST_ID_HID_PAYLOAD ;
 int REG_MDT_XMIT_CTRL ;
 int REG_MDT_XMIT_WRITE_PORT ;
 int sii8620_mhl_burst_emsc_support_set (void*,int ) ;
 int sii8620_write (struct sii8620*,int ,int) ;
 int sii8620_write_buf (struct sii8620*,int ,int *,int ) ;

__attribute__((used)) static void sii8620_send_features(struct sii8620 *ctx)
{
 u8 buf[16];

 sii8620_write(ctx, REG_MDT_XMIT_CTRL, BIT_MDT_XMIT_CTRL_EN
  | BIT_MDT_XMIT_CTRL_FIXED_BURST_LEN);
 sii8620_mhl_burst_emsc_support_set((void *)buf,
  MHL_BURST_ID_HID_PAYLOAD);
 sii8620_write_buf(ctx, REG_MDT_XMIT_WRITE_PORT, buf, ARRAY_SIZE(buf));
}
