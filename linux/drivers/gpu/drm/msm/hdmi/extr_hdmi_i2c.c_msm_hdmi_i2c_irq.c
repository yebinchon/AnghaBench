
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct hdmi_i2c_adapter {int ddc_event; } ;


 scalar_t__ sw_done (struct hdmi_i2c_adapter*) ;
 struct hdmi_i2c_adapter* to_hdmi_i2c_adapter (struct i2c_adapter*) ;
 int wake_up_all (int *) ;

void msm_hdmi_i2c_irq(struct i2c_adapter *i2c)
{
 struct hdmi_i2c_adapter *hdmi_i2c = to_hdmi_i2c_adapter(i2c);

 if (sw_done(hdmi_i2c))
  wake_up_all(&hdmi_i2c->ddc_event);
}
