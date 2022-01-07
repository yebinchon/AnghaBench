
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct mxl {int i2cdev; TYPE_1__* base; } ;
struct TYPE_2__ {int i2c_lock; scalar_t__* buf; } ;


 scalar_t__ GET_BYTE (scalar_t__,int) ;
 scalar_t__ MXL_HYDRA_I2C_HDR_SIZE ;
 scalar_t__ MXL_HYDRA_PLID_REG_WRITE ;
 scalar_t__ MXL_HYDRA_REG_SIZE_IN_BYTES ;
 int dev_err (int ,char*) ;
 int i2cwrite (struct mxl*,scalar_t__*,scalar_t__) ;
 int memcpy (scalar_t__*,scalar_t__*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int write_firmware_block(struct mxl *state,
    u32 reg, u32 size, u8 *reg_data_ptr)
{
 int stat;
 u8 *buf = state->base->buf;

 mutex_lock(&state->base->i2c_lock);
 buf[0] = MXL_HYDRA_PLID_REG_WRITE;
 buf[1] = size + 4;
 buf[2] = GET_BYTE(reg, 0);
 buf[3] = GET_BYTE(reg, 1);
 buf[4] = GET_BYTE(reg, 2);
 buf[5] = GET_BYTE(reg, 3);
 memcpy(&buf[6], reg_data_ptr, size);
 stat = i2cwrite(state, buf,
   MXL_HYDRA_I2C_HDR_SIZE +
   MXL_HYDRA_REG_SIZE_IN_BYTES + size);
 mutex_unlock(&state->base->i2c_lock);
 if (stat)
  dev_err(state->i2cdev, "fw block write failed\n");
 return stat;
}
