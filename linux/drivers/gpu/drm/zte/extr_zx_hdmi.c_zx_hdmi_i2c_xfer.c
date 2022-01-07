
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_hdmi_i2c {int lock; } ;
struct zx_hdmi {int dev; struct zx_hdmi_i2c* ddc; } ;
struct i2c_msg {int flags; int len; } ;
struct i2c_adapter {int dummy; } ;


 int DRM_DEV_DEBUG (int ,char*,int,int,int ,int) ;
 int HW_DDC_MASTER ;
 int I2C_M_RD ;
 int TPI_DDC_MASTER_EN ;
 int hdmi_writeb_mask (struct zx_hdmi*,int ,int ,int ) ;
 struct zx_hdmi* i2c_get_adapdata (struct i2c_adapter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zx_hdmi_i2c_read (struct zx_hdmi*,struct i2c_msg*) ;
 int zx_hdmi_i2c_write (struct zx_hdmi*,struct i2c_msg*) ;

__attribute__((used)) static int zx_hdmi_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
       int num)
{
 struct zx_hdmi *hdmi = i2c_get_adapdata(adap);
 struct zx_hdmi_i2c *ddc = hdmi->ddc;
 int i, ret = 0;

 mutex_lock(&ddc->lock);


 hdmi_writeb_mask(hdmi, TPI_DDC_MASTER_EN, HW_DDC_MASTER, HW_DDC_MASTER);

 for (i = 0; i < num; i++) {
  DRM_DEV_DEBUG(hdmi->dev,
         "xfer: num: %d/%d, len: %d, flags: %#x\n",
         i + 1, num, msgs[i].len, msgs[i].flags);

  if (msgs[i].flags & I2C_M_RD)
   ret = zx_hdmi_i2c_read(hdmi, &msgs[i]);
  else
   ret = zx_hdmi_i2c_write(hdmi, &msgs[i]);

  if (ret < 0)
   break;
 }

 if (!ret)
  ret = num;


 hdmi_writeb_mask(hdmi, TPI_DDC_MASTER_EN, HW_DDC_MASTER, 0);

 mutex_unlock(&ddc->lock);

 return ret;
}
