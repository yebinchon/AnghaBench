
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3066_hdmi_i2c {int i2c_lock; scalar_t__ stat; } ;
struct rk3066_hdmi {int dev; struct rk3066_hdmi_i2c* i2c; } ;
struct i2c_msg {int flags; int len; } ;
struct i2c_adapter {int dummy; } ;


 int DRM_DEV_DEBUG (int ,char*,int,int,int ,int) ;
 int HDMI_INTR_EDID_MASK ;
 int HDMI_INTR_MASK1 ;
 int I2C_M_RD ;
 int hdmi_modb (struct rk3066_hdmi*,int ,int ,int ) ;
 struct rk3066_hdmi* i2c_get_adapdata (struct i2c_adapter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rk3066_hdmi_i2c_init (struct rk3066_hdmi*) ;
 int rk3066_hdmi_i2c_read (struct rk3066_hdmi*,struct i2c_msg*) ;
 int rk3066_hdmi_i2c_write (struct rk3066_hdmi*,struct i2c_msg*) ;

__attribute__((used)) static int rk3066_hdmi_i2c_xfer(struct i2c_adapter *adap,
    struct i2c_msg *msgs, int num)
{
 struct rk3066_hdmi *hdmi = i2c_get_adapdata(adap);
 struct rk3066_hdmi_i2c *i2c = hdmi->i2c;
 int i, ret = 0;

 mutex_lock(&i2c->i2c_lock);

 rk3066_hdmi_i2c_init(hdmi);


 hdmi_modb(hdmi, HDMI_INTR_MASK1,
    HDMI_INTR_EDID_MASK, HDMI_INTR_EDID_MASK);
 i2c->stat = 0;

 for (i = 0; i < num; i++) {
  DRM_DEV_DEBUG(hdmi->dev,
         "xfer: num: %d/%d, len: %d, flags: %#x\n",
         i + 1, num, msgs[i].len, msgs[i].flags);

  if (msgs[i].flags & I2C_M_RD)
   ret = rk3066_hdmi_i2c_read(hdmi, &msgs[i]);
  else
   ret = rk3066_hdmi_i2c_write(hdmi, &msgs[i]);

  if (ret < 0)
   break;
 }

 if (!ret)
  ret = num;


 hdmi_modb(hdmi, HDMI_INTR_MASK1, HDMI_INTR_EDID_MASK, 0);

 mutex_unlock(&i2c->i2c_lock);

 return ret;
}
