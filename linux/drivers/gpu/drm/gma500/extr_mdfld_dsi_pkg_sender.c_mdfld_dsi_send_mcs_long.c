
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mdfld_dsi_pkg_sender {int lock; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int MIPI_DSI_DCS_LONG_WRITE ;
 int send_pkg (struct mdfld_dsi_pkg_sender*,int ,int *,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int mdfld_dsi_send_mcs_long(struct mdfld_dsi_pkg_sender *sender, u8 *data,
   u32 len, bool hs)
{
 unsigned long flags;

 if (!sender || !data || !len) {
  DRM_ERROR("Invalid parameters\n");
  return -EINVAL;
 }

 spin_lock_irqsave(&sender->lock, flags);
 send_pkg(sender, MIPI_DSI_DCS_LONG_WRITE, data, len, hs);
 spin_unlock_irqrestore(&sender->lock, flags);

 return 0;
}
