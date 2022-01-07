
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma8450 {int dummy; } ;
struct input_polled_dev {struct mma8450* private; } ;


 int MMA8450_CTRL_REG1 ;
 int MMA8450_CTRL_REG2 ;
 int mma8450_write (struct mma8450*,int ,int) ;

__attribute__((used)) static void mma8450_close(struct input_polled_dev *dev)
{
 struct mma8450 *m = dev->private;

 mma8450_write(m, MMA8450_CTRL_REG1, 0x00);
 mma8450_write(m, MMA8450_CTRL_REG2, 0x01);
}
