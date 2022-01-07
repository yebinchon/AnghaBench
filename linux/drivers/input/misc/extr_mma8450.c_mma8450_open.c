
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma8450 {int dummy; } ;
struct input_polled_dev {struct mma8450* private; } ;


 int MMA8450_CTRL_REG1 ;
 int MMA8450_XYZ_DATA_CFG ;
 int MODE_CHANGE_DELAY_MS ;
 int mma8450_write (struct mma8450*,int ,int) ;
 int msleep (int ) ;

__attribute__((used)) static void mma8450_open(struct input_polled_dev *dev)
{
 struct mma8450 *m = dev->private;
 int err;


 err = mma8450_write(m, MMA8450_XYZ_DATA_CFG, 0x07);
 if (err)
  return;






 err = mma8450_write(m, MMA8450_CTRL_REG1, 0x01);
 if (err < 0)
  return;

 msleep(MODE_CHANGE_DELAY_MS);
}
