
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oaktrail_hdmi_dev {struct hdmi_i2c_dev* i2c_dev; } ;
struct i2c_msg {int flags; scalar_t__ buf; scalar_t__ len; } ;
struct i2c_adapter {int dummy; } ;
struct hdmi_i2c_dev {int i2c_lock; } ;


 int HDMI_ICRH ;
 int HDMI_WRITE (int ,int) ;
 int I2C_M_RD ;
 int hdmi_i2c_irq_disable (struct oaktrail_hdmi_dev*) ;
 int hdmi_i2c_irq_enable (struct oaktrail_hdmi_dev*) ;
 struct oaktrail_hdmi_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xfer_read (struct i2c_adapter*,struct i2c_msg*) ;
 int xfer_write (struct i2c_adapter*,struct i2c_msg*) ;

__attribute__((used)) static int oaktrail_hdmi_i2c_access(struct i2c_adapter *adap,
    struct i2c_msg *pmsg,
    int num)
{
 struct oaktrail_hdmi_dev *hdmi_dev = i2c_get_adapdata(adap);
 struct hdmi_i2c_dev *i2c_dev = hdmi_dev->i2c_dev;
 int i;

 mutex_lock(&i2c_dev->i2c_lock);


 HDMI_WRITE(HDMI_ICRH, 0x00008760);


 hdmi_i2c_irq_enable(hdmi_dev);
 for (i = 0; i < num; i++) {
  if (pmsg->len && pmsg->buf) {
   if (pmsg->flags & I2C_M_RD)
    xfer_read(adap, pmsg);
   else
    xfer_write(adap, pmsg);
  }
  pmsg++;
 }


 hdmi_i2c_irq_disable(hdmi_dev);

 mutex_unlock(&i2c_dev->i2c_lock);

 return i;
}
