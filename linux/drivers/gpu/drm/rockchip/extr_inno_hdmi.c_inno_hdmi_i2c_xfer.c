
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inno_hdmi_i2c {int lock; } ;
struct inno_hdmi {int dev; struct inno_hdmi_i2c* i2c; } ;
struct i2c_msg {int flags; int len; } ;
struct i2c_adapter {int dummy; } ;


 int DRM_DEV_DEBUG (int ,char*,int,int,int ,int) ;
 int HDMI_INTERRUPT_MASK1 ;
 int HDMI_INTERRUPT_STATUS1 ;
 int I2C_M_RD ;
 int hdmi_writeb (struct inno_hdmi*,int ,int ) ;
 struct inno_hdmi* i2c_get_adapdata (struct i2c_adapter*) ;
 int inno_hdmi_i2c_read (struct inno_hdmi*,struct i2c_msg*) ;
 int inno_hdmi_i2c_write (struct inno_hdmi*,struct i2c_msg*) ;
 int m_INT_EDID_READY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int inno_hdmi_i2c_xfer(struct i2c_adapter *adap,
         struct i2c_msg *msgs, int num)
{
 struct inno_hdmi *hdmi = i2c_get_adapdata(adap);
 struct inno_hdmi_i2c *i2c = hdmi->i2c;
 int i, ret = 0;

 mutex_lock(&i2c->lock);


 hdmi_writeb(hdmi, HDMI_INTERRUPT_MASK1, m_INT_EDID_READY);
 hdmi_writeb(hdmi, HDMI_INTERRUPT_STATUS1, m_INT_EDID_READY);

 for (i = 0; i < num; i++) {
  DRM_DEV_DEBUG(hdmi->dev,
         "xfer: num: %d/%d, len: %d, flags: %#x\n",
         i + 1, num, msgs[i].len, msgs[i].flags);

  if (msgs[i].flags & I2C_M_RD)
   ret = inno_hdmi_i2c_read(hdmi, &msgs[i]);
  else
   ret = inno_hdmi_i2c_write(hdmi, &msgs[i]);

  if (ret < 0)
   break;
 }

 if (!ret)
  ret = num;


 hdmi_writeb(hdmi, HDMI_INTERRUPT_MASK1, 0);

 mutex_unlock(&i2c->lock);

 return ret;
}
