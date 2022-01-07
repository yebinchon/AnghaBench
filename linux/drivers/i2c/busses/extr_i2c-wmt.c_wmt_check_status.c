
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmt_i2c_dev {int cmd_status; } ;


 int EIO ;
 int ETIMEDOUT ;
 int ISR_NACK_ADDR ;
 int ISR_SCL_TIMEOUT ;

__attribute__((used)) static int wmt_check_status(struct wmt_i2c_dev *i2c_dev)
{
 int ret = 0;

 if (i2c_dev->cmd_status & ISR_NACK_ADDR)
  ret = -EIO;

 if (i2c_dev->cmd_status & ISR_SCL_TIMEOUT)
  ret = -ETIMEDOUT;

 return ret;
}
