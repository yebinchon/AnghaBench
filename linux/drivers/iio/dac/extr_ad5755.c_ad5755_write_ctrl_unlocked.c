
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int AD5755_WRITE_REG_CTRL (unsigned int) ;
 int ad5755_write_unlocked (struct iio_dev*,int ,unsigned int) ;

__attribute__((used)) static int ad5755_write_ctrl_unlocked(struct iio_dev *indio_dev,
 unsigned int channel, unsigned int reg, unsigned int val)
{
 return ad5755_write_unlocked(indio_dev,
  AD5755_WRITE_REG_CTRL(channel), (reg << 13) | val);
}
