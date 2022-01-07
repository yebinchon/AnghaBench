
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int addr; int len; int flags; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct dw_hdmi_i2c {int is_regaddr; int is_segment; int lock; } ;
struct dw_hdmi {int dev; struct dw_hdmi_i2c* i2c; } ;


 int DDC_SEGMENT_ADDR ;
 int EOPNOTSUPP ;
 int HDMI_I2CM_SEGADDR ;
 int HDMI_I2CM_SEGPTR ;
 int HDMI_I2CM_SLAVE ;
 int HDMI_IH_I2CM_STAT0_DONE ;
 int HDMI_IH_I2CM_STAT0_ERROR ;
 int HDMI_IH_MUTE_I2CM_STAT0 ;
 int I2C_M_RD ;
 int dev_dbg (int ,char*,int,int,...) ;
 int dw_hdmi_i2c_read (struct dw_hdmi*,int*,int) ;
 int dw_hdmi_i2c_write (struct dw_hdmi*,int*,int) ;
 int hdmi_writeb (struct dw_hdmi*,int,int ) ;
 struct dw_hdmi* i2c_get_adapdata (struct i2c_adapter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dw_hdmi_i2c_xfer(struct i2c_adapter *adap,
       struct i2c_msg *msgs, int num)
{
 struct dw_hdmi *hdmi = i2c_get_adapdata(adap);
 struct dw_hdmi_i2c *i2c = hdmi->i2c;
 u8 addr = msgs[0].addr;
 int i, ret = 0;

 dev_dbg(hdmi->dev, "xfer: num: %d, addr: %#x\n", num, addr);

 for (i = 0; i < num; i++) {
  if (msgs[i].len == 0) {
   dev_dbg(hdmi->dev,
    "unsupported transfer %d/%d, no data\n",
    i + 1, num);
   return -EOPNOTSUPP;
  }
 }

 mutex_lock(&i2c->lock);


 hdmi_writeb(hdmi, 0x00, HDMI_IH_MUTE_I2CM_STAT0);


 hdmi_writeb(hdmi, addr, HDMI_I2CM_SLAVE);


 i2c->is_regaddr = 0;


 i2c->is_segment = 0;

 for (i = 0; i < num; i++) {
  dev_dbg(hdmi->dev, "xfer: num: %d/%d, len: %d, flags: %#x\n",
   i + 1, num, msgs[i].len, msgs[i].flags);
  if (msgs[i].addr == DDC_SEGMENT_ADDR && msgs[i].len == 1) {
   i2c->is_segment = 1;
   hdmi_writeb(hdmi, DDC_SEGMENT_ADDR, HDMI_I2CM_SEGADDR);
   hdmi_writeb(hdmi, *msgs[i].buf, HDMI_I2CM_SEGPTR);
  } else {
   if (msgs[i].flags & I2C_M_RD)
    ret = dw_hdmi_i2c_read(hdmi, msgs[i].buf,
             msgs[i].len);
   else
    ret = dw_hdmi_i2c_write(hdmi, msgs[i].buf,
       msgs[i].len);
  }
  if (ret < 0)
   break;
 }

 if (!ret)
  ret = num;


 hdmi_writeb(hdmi, HDMI_IH_I2CM_STAT0_ERROR | HDMI_IH_I2CM_STAT0_DONE,
      HDMI_IH_MUTE_I2CM_STAT0);

 mutex_unlock(&i2c->lock);

 return ret;
}
