
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qup_i2c_dev {int dummy; } ;


 int QUP_I2C_MAST_GEN ;
 int qup_i2c_poll_state_mask (struct qup_i2c_dev*,int ,int ) ;

__attribute__((used)) static int qup_i2c_poll_state_i2c_master(struct qup_i2c_dev *qup)
{
 return qup_i2c_poll_state_mask(qup, QUP_I2C_MAST_GEN, QUP_I2C_MAST_GEN);
}
