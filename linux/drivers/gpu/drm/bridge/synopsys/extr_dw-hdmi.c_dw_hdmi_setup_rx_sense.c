
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int rxsense; int mutex; int force; } ;


 int dw_hdmi_update_phy_mask (struct dw_hdmi*) ;
 int dw_hdmi_update_power (struct dw_hdmi*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense)
{
 mutex_lock(&hdmi->mutex);

 if (!hdmi->force) {




  if (!rx_sense)
   hdmi->rxsense = 0;







  if (hpd)
   hdmi->rxsense = 1;

  dw_hdmi_update_power(hdmi);
  dw_hdmi_update_phy_mask(hdmi);
 }
 mutex_unlock(&hdmi->mutex);
}
