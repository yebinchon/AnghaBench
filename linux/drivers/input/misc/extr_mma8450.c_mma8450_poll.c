
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mma8450 {int dummy; } ;
struct input_polled_dev {int input; struct mma8450* private; } ;
typedef scalar_t__ s8 ;
typedef int buf ;


 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int MMA8450_OUT_X_LSB ;
 int MMA8450_STATUS ;
 int MMA8450_STATUS_ZXYDR ;
 int input_report_abs (int ,int ,int) ;
 int input_sync (int ) ;
 int mma8450_read (struct mma8450*,int ) ;
 int mma8450_read_block (struct mma8450*,int ,int*,int) ;

__attribute__((used)) static void mma8450_poll(struct input_polled_dev *dev)
{
 struct mma8450 *m = dev->private;
 int x, y, z;
 int ret;
 u8 buf[6];

 ret = mma8450_read(m, MMA8450_STATUS);
 if (ret < 0)
  return;

 if (!(ret & MMA8450_STATUS_ZXYDR))
  return;

 ret = mma8450_read_block(m, MMA8450_OUT_X_LSB, buf, sizeof(buf));
 if (ret < 0)
  return;

 x = ((int)(s8)buf[1] << 4) | (buf[0] & 0xf);
 y = ((int)(s8)buf[3] << 4) | (buf[2] & 0xf);
 z = ((int)(s8)buf[5] << 4) | (buf[4] & 0xf);

 input_report_abs(dev->input, ABS_X, x);
 input_report_abs(dev->input, ABS_Y, y);
 input_report_abs(dev->input, ABS_Z, z);
 input_sync(dev->input);
}
