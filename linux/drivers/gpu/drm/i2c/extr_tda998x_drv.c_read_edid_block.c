
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tda998x_priv {int wq_edid_wait; int edid_mutex; TYPE_1__* hdmi; int wq_edid; } ;
struct TYPE_2__ {int dev; scalar_t__ irq; } ;


 int ETIMEDOUT ;
 int INT_FLAGS_2_EDID_BLK_RD ;
 int REG_DDC_ADDR ;
 int REG_DDC_OFFS ;
 int REG_DDC_SEGM ;
 int REG_DDC_SEGM_ADDR ;
 int REG_EDID_CTRL ;
 int REG_EDID_DATA_0 ;
 int REG_INT_FLAGS_2 ;
 int dev_err (int *,char*,...) ;
 int msecs_to_jiffies (int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reg_read (struct tda998x_priv*,int ) ;
 int reg_read_range (struct tda998x_priv*,int ,int*,size_t) ;
 int reg_write (struct tda998x_priv*,int ,int) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int read_edid_block(void *data, u8 *buf, unsigned int blk, size_t length)
{
 struct tda998x_priv *priv = data;
 u8 offset, segptr;
 int ret, i;

 offset = (blk & 1) ? 128 : 0;
 segptr = blk / 2;

 mutex_lock(&priv->edid_mutex);

 reg_write(priv, REG_DDC_ADDR, 0xa0);
 reg_write(priv, REG_DDC_OFFS, offset);
 reg_write(priv, REG_DDC_SEGM_ADDR, 0x60);
 reg_write(priv, REG_DDC_SEGM, segptr);


 priv->wq_edid_wait = 1;
 reg_write(priv, REG_EDID_CTRL, 0x1);


 reg_write(priv, REG_EDID_CTRL, 0x0);


 if (priv->hdmi->irq) {
  i = wait_event_timeout(priv->wq_edid,
     !priv->wq_edid_wait,
     msecs_to_jiffies(100));
  if (i < 0) {
   dev_err(&priv->hdmi->dev, "read edid wait err %d\n", i);
   ret = i;
   goto failed;
  }
 } else {
  for (i = 100; i > 0; i--) {
   msleep(1);
   ret = reg_read(priv, REG_INT_FLAGS_2);
   if (ret < 0)
    goto failed;
   if (ret & INT_FLAGS_2_EDID_BLK_RD)
    break;
  }
 }

 if (i == 0) {
  dev_err(&priv->hdmi->dev, "read edid timeout\n");
  ret = -ETIMEDOUT;
  goto failed;
 }

 ret = reg_read_range(priv, REG_EDID_DATA_0, buf, length);
 if (ret != length) {
  dev_err(&priv->hdmi->dev, "failed to read edid block %d: %d\n",
   blk, ret);
  goto failed;
 }

 ret = 0;

 failed:
 mutex_unlock(&priv->edid_mutex);
 return ret;
}
