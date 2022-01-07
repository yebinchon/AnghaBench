
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct hdmi_i2c_adapter {int dummy; } ;


 int i2c_del_adapter (struct i2c_adapter*) ;
 int kfree (struct hdmi_i2c_adapter*) ;
 struct hdmi_i2c_adapter* to_hdmi_i2c_adapter (struct i2c_adapter*) ;

void msm_hdmi_i2c_destroy(struct i2c_adapter *i2c)
{
 struct hdmi_i2c_adapter *hdmi_i2c = to_hdmi_i2c_adapter(i2c);
 i2c_del_adapter(i2c);
 kfree(hdmi_i2c);
}
