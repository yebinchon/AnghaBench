
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mdfld_dsi_pkg_sender {int status; int panel_mode; } ;


 int MDFLD_DSI_PANEL_MODE_SLEEP ;
 int MDFLD_DSI_PKG_SENDER_FREE ;
 int MIPI_DCS_ENTER_SLEEP_MODE ;
 int MIPI_DCS_EXIT_SLEEP_MODE ;
 int MIPI_DCS_SOFT_RESET ;



 int mdelay (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int send_pkg_done(struct mdfld_dsi_pkg_sender *sender, u8 data_type,
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


 if (unlikely(cmd == MIPI_DCS_ENTER_SLEEP_MODE)) {
  sender->panel_mode |= MDFLD_DSI_PANEL_MODE_SLEEP;

  mdelay(120);
 } else if (unlikely(cmd == MIPI_DCS_EXIT_SLEEP_MODE)) {
  sender->panel_mode &= ~MDFLD_DSI_PANEL_MODE_SLEEP;

  mdelay(120);
 } else if (unlikely(cmd == MIPI_DCS_SOFT_RESET)) {

  mdelay(5);
 }

 sender->status = MDFLD_DSI_PKG_SENDER_FREE;

 return 0;
}
