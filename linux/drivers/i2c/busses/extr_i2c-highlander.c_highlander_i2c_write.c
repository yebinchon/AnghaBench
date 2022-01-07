
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct highlander_i2c_dev {int buf_len; int dev; scalar_t__ base; int buf; } ;


 int EAGAIN ;
 scalar_t__ SMTRDR ;
 int dev_dbg (int ,char*,int,int ) ;
 int highlander_i2c_start (struct highlander_i2c_dev*) ;
 scalar_t__ highlander_i2c_wait_for_bbsy (struct highlander_i2c_dev*) ;
 int highlander_i2c_wait_xfer_done (struct highlander_i2c_dev*) ;
 int iowrite16 (int ,scalar_t__) ;
 int smbus_write_data (int ,int *,int) ;

__attribute__((used)) static int highlander_i2c_write(struct highlander_i2c_dev *dev)
{
 int i, cnt;
 u16 data[16];

 smbus_write_data(dev->buf, data, dev->buf_len);

 cnt = (dev->buf_len + 1) >> 1;
 for (i = 0; i < cnt; i++) {
  iowrite16(data[i], dev->base + SMTRDR + (i * sizeof(u16)));
  dev_dbg(dev->dev, "write data[%x] 0x%04x\n", i, data[i]);
 }

 if (highlander_i2c_wait_for_bbsy(dev))
  return -EAGAIN;

 highlander_i2c_start(dev);

 return highlander_i2c_wait_xfer_done(dev);
}
