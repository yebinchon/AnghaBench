
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mdfld_dsi_pkg_sender {int status; } ;


 int MDFLD_DSI_PKG_SENDER_BUSY ;
 int MIPI_DCS_ENTER_SLEEP_MODE ;
 int MIPI_DCS_EXIT_SLEEP_MODE ;



 int mdelay (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int send_pkg_prepare(struct mdfld_dsi_pkg_sender *sender, u8 data_type,
   u8 *data, u16 len)
{
 u8 cmd;

 switch (data_type) {
 case 129:
 case 128:
 case 130:
  cmd = *data;
  break;
 default:
  return 0;
 }


 sender->status = MDFLD_DSI_PKG_SENDER_BUSY;


 if (unlikely(cmd == MIPI_DCS_ENTER_SLEEP_MODE)) {

  mdelay(120);
 }

 if (unlikely(cmd == MIPI_DCS_EXIT_SLEEP_MODE)) {

  mdelay(120);
 }
 return 0;
}
