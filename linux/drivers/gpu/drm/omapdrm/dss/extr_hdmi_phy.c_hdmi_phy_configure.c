
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hdmi_phy_data {int base; TYPE_1__* features; } ;
struct TYPE_2__ {unsigned long max_phy; scalar_t__ ldo_voltage; scalar_t__ bist_ctrl; } ;


 int HDMI_TXPHY_BIST_CONTROL ;
 int HDMI_TXPHY_DIGITAL_CTRL ;
 int HDMI_TXPHY_POWER_CTRL ;
 int HDMI_TXPHY_TX_CTRL ;
 int REG_FLD_MOD (int ,int ,int,int,int) ;
 int hdmi_phy_configure_lanes (struct hdmi_phy_data*) ;
 int hdmi_read_reg (int ,int ) ;
 int hdmi_write_reg (int ,int ,int) ;

int hdmi_phy_configure(struct hdmi_phy_data *phy, unsigned long hfbitclk,
 unsigned long lfbitclk)
{
 u8 freqout;





 hdmi_read_reg(phy->base, HDMI_TXPHY_TX_CTRL);





 if (phy->features->bist_ctrl)
  REG_FLD_MOD(phy->base, HDMI_TXPHY_BIST_CONTROL, 1, 11, 11);





 if (hfbitclk != lfbitclk)
  freqout = 0;
 else if (hfbitclk / 10 < phy->features->max_phy)
  freqout = 1;
 else
  freqout = 2;





 REG_FLD_MOD(phy->base, HDMI_TXPHY_TX_CTRL, freqout, 31, 30);


 hdmi_write_reg(phy->base, HDMI_TXPHY_DIGITAL_CTRL, 0xF0000000);


 if (phy->features->ldo_voltage)
  REG_FLD_MOD(phy->base, HDMI_TXPHY_POWER_CTRL, 0xB, 3, 0);

 hdmi_phy_configure_lanes(phy);

 return 0;
}
