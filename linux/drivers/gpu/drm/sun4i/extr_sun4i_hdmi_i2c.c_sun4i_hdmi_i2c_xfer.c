
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_hdmi {int ddc_clk; int field_ddc_sda_en; int field_ddc_sck_en; int field_ddc_reset; int field_ddc_en; } ;
struct i2c_msg {scalar_t__ len; } ;
struct i2c_adapter {int dummy; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ SUN4I_HDMI_DDC_BYTE_COUNT_MAX ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int) ;
 struct sun4i_hdmi* i2c_get_adapdata (struct i2c_adapter*) ;
 scalar_t__ regmap_field_read_poll_timeout (int ,int ,int,int,int) ;
 int regmap_field_write (int ,int) ;
 int xfer_msg (struct sun4i_hdmi*,struct i2c_msg*) ;

__attribute__((used)) static int sun4i_hdmi_i2c_xfer(struct i2c_adapter *adap,
          struct i2c_msg *msgs, int num)
{
 struct sun4i_hdmi *hdmi = i2c_get_adapdata(adap);
 u32 reg;
 int err, i, ret = num;

 for (i = 0; i < num; i++) {
  if (!msgs[i].len)
   return -EINVAL;
  if (msgs[i].len > SUN4I_HDMI_DDC_BYTE_COUNT_MAX)
   return -EINVAL;
 }


 clk_prepare_enable(hdmi->ddc_clk);
 clk_set_rate(hdmi->ddc_clk, 100000);


 regmap_field_write(hdmi->field_ddc_en, 1);
 regmap_field_write(hdmi->field_ddc_reset, 1);
 if (regmap_field_read_poll_timeout(hdmi->field_ddc_reset,
        reg, !reg, 100, 2000)) {
  clk_disable_unprepare(hdmi->ddc_clk);
  return -EIO;
 }

 regmap_field_write(hdmi->field_ddc_sck_en, 1);
 regmap_field_write(hdmi->field_ddc_sda_en, 1);

 for (i = 0; i < num; i++) {
  err = xfer_msg(hdmi, &msgs[i]);
  if (err) {
   ret = err;
   break;
  }
 }

 clk_disable_unprepare(hdmi->ddc_clk);
 return ret;
}
