
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mdfld_dsi_pkg_sender {scalar_t__ status; } ;


 int DRM_ERROR (char*) ;
 int EAGAIN ;
 scalar_t__ MDFLD_DSI_PKG_SENDER_BUSY ;
 int dsi_error_handler (struct mdfld_dsi_pkg_sender*) ;
 int send_long_pkg (struct mdfld_dsi_pkg_sender*,int,int*,int ,int) ;
 int send_pkg_done (struct mdfld_dsi_pkg_sender*,int,int*,int ) ;
 int send_pkg_prepare (struct mdfld_dsi_pkg_sender*,int,int*,int ) ;
 int send_short_pkg (struct mdfld_dsi_pkg_sender*,int,int,int,int) ;

__attribute__((used)) static int send_pkg(struct mdfld_dsi_pkg_sender *sender, u8 data_type,
  u8 *data, u16 len, bool hs)
{
 int ret;


 ret = dsi_error_handler(sender);
 if (ret) {
  DRM_ERROR("Error handling failed\n");
  return -EAGAIN;
 }


 if (sender->status == MDFLD_DSI_PKG_SENDER_BUSY) {
  DRM_ERROR("sender is busy\n");
  return -EAGAIN;
 }

 ret = send_pkg_prepare(sender, data_type, data, len);
 if (ret) {
  DRM_ERROR("send_pkg_prepare error\n");
  return ret;
 }

 switch (data_type) {
 case 130:
 case 129:
 case 128:
 case 133:
 case 132:
 case 131:
 case 136:
 case 135:
 case 137:
  ret = send_short_pkg(sender, data_type, data[0], data[1], hs);
  break;
 case 134:
 case 138:
  ret = send_long_pkg(sender, data_type, data, len, hs);
  break;
 }

 send_pkg_done(sender, data_type, data, len);



 return ret;
}
