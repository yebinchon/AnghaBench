
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mdfld_dsi_pkg_sender {int lock; } ;
typedef int data ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 scalar_t__ MIPI_DSI_DCS_SHORT_WRITE ;
 scalar_t__ MIPI_DSI_DCS_SHORT_WRITE_PARAM ;
 int send_pkg (struct mdfld_dsi_pkg_sender*,scalar_t__,scalar_t__*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int mdfld_dsi_send_mcs_short(struct mdfld_dsi_pkg_sender *sender, u8 cmd,
   u8 param, u8 param_num, bool hs)
{
 u8 data[2];
 unsigned long flags;
 u8 data_type;

 if (!sender) {
  DRM_ERROR("Invalid parameter\n");
  return -EINVAL;
 }

 data[0] = cmd;

 if (param_num) {
  data_type = MIPI_DSI_DCS_SHORT_WRITE_PARAM;
  data[1] = param;
 } else {
  data_type = MIPI_DSI_DCS_SHORT_WRITE;
  data[1] = 0;
 }

 spin_lock_irqsave(&sender->lock, flags);
 send_pkg(sender, data_type, data, sizeof(data), hs);
 spin_unlock_irqrestore(&sender->lock, flags);

 return 0;
}
