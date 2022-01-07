
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun8i_hdmi_phy_variant {int phy_cfg; int cur_ctr; int mpll_cfg; scalar_t__ is_custom_phy; } ;
struct sun8i_hdmi_phy {struct sun8i_hdmi_phy_variant* variant; } ;
struct dw_hdmi_plat_data {char* phy_name; int phy_config; int cur_ctr; int mpll_cfg; struct sun8i_hdmi_phy* phy_data; int * phy_ops; } ;


 int sun8i_hdmi_phy_ops ;

void sun8i_hdmi_phy_set_ops(struct sun8i_hdmi_phy *phy,
       struct dw_hdmi_plat_data *plat_data)
{
 struct sun8i_hdmi_phy_variant *variant = phy->variant;

 if (variant->is_custom_phy) {
  plat_data->phy_ops = &sun8i_hdmi_phy_ops;
  plat_data->phy_name = "sun8i_dw_hdmi_phy";
  plat_data->phy_data = phy;
 } else {
  plat_data->mpll_cfg = variant->mpll_cfg;
  plat_data->cur_ctr = variant->cur_ctr;
  plat_data->phy_config = variant->phy_cfg;
 }
}
