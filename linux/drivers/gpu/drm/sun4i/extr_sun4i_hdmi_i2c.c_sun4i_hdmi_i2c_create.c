
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_hdmi {struct i2c_adapter* i2c; int ddc_parent_clk; } ;
struct i2c_adapter {int name; int * algo; int class; int owner; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLASS_DDC ;
 int THIS_MODULE ;
 struct i2c_adapter* devm_kzalloc (struct device*,int,int ) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct sun4i_hdmi*) ;
 int strlcpy (int ,char*,int) ;
 int sun4i_ddc_create (struct sun4i_hdmi*,int ) ;
 int sun4i_hdmi_i2c_algorithm ;
 int sun4i_hdmi_init_regmap_fields (struct sun4i_hdmi*) ;

int sun4i_hdmi_i2c_create(struct device *dev, struct sun4i_hdmi *hdmi)
{
 struct i2c_adapter *adap;
 int ret = 0;

 ret = sun4i_ddc_create(hdmi, hdmi->ddc_parent_clk);
 if (ret)
  return ret;

 ret = sun4i_hdmi_init_regmap_fields(hdmi);
 if (ret)
  return ret;

 adap = devm_kzalloc(dev, sizeof(*adap), GFP_KERNEL);
 if (!adap)
  return -ENOMEM;

 adap->owner = THIS_MODULE;
 adap->class = I2C_CLASS_DDC;
 adap->algo = &sun4i_hdmi_i2c_algorithm;
 strlcpy(adap->name, "sun4i_hdmi_i2c adapter", sizeof(adap->name));
 i2c_set_adapdata(adap, hdmi);

 ret = i2c_add_adapter(adap);
 if (ret)
  return ret;

 hdmi->i2c = adap;

 return ret;
}
