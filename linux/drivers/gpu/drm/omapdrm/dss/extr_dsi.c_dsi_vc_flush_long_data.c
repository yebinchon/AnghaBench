
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsi_data {int dummy; } ;


 int DSI_VC_CTRL (int) ;
 int DSI_VC_SHORT_PACKET_HEADER (int) ;
 int DSSDBG (char*,int,int,int,int) ;
 scalar_t__ REG_GET (struct dsi_data*,int ,int,int) ;
 int dsi_read_reg (struct dsi_data*,int ) ;

__attribute__((used)) static void dsi_vc_flush_long_data(struct dsi_data *dsi, int channel)
{
 while (REG_GET(dsi, DSI_VC_CTRL(channel), 20, 20)) {
  u32 val;
  val = dsi_read_reg(dsi, DSI_VC_SHORT_PACKET_HEADER(channel));
  DSSDBG("\t\tb1 %#02x b2 %#02x b3 %#02x b4 %#02x\n",
    (val >> 0) & 0xff,
    (val >> 8) & 0xff,
    (val >> 16) & 0xff,
    (val >> 24) & 0xff);
 }
}
