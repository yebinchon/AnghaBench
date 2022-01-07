
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dsi_data {int dummy; } ;


 int DSI_VC_LONG_PACKET_PAYLOAD (int) ;
 int dsi_write_reg (struct dsi_data*,int ,int) ;

__attribute__((used)) static inline void dsi_vc_write_long_payload(struct dsi_data *dsi, int channel,
          u8 b1, u8 b2, u8 b3, u8 b4)
{
 u32 val;

 val = b4 << 24 | b3 << 16 | b2 << 8 | b1 << 0;




 dsi_write_reg(dsi, DSI_VC_LONG_PACKET_PAYLOAD(channel), val);
}
