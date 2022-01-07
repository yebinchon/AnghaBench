
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct mxl {TYPE_1__* base; } ;
struct TYPE_2__ {int i2c_lock; scalar_t__* buf; } ;


 scalar_t__ GET_BYTE (scalar_t__,int) ;
 int MXL_ENABLE_BIG_ENDIAN ;
 scalar_t__ MXL_HYDRA_I2C_HDR_SIZE ;
 scalar_t__ MXL_HYDRA_PLID_REG_READ ;
 scalar_t__ MXL_HYDRA_REG_SIZE_IN_BYTES ;
 int convert_endian (int ,scalar_t__,scalar_t__*) ;
 int i2cread (struct mxl*,scalar_t__*,scalar_t__) ;
 int i2cwrite (struct mxl*,scalar_t__*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int read_register_block(struct mxl *state, u32 reg, u32 size, u8 *data)
{
 int stat;
 u8 *buf = state->base->buf;

 mutex_lock(&state->base->i2c_lock);

 buf[0] = MXL_HYDRA_PLID_REG_READ;
 buf[1] = size + 4;
 buf[2] = GET_BYTE(reg, 0);
 buf[3] = GET_BYTE(reg, 1);
 buf[4] = GET_BYTE(reg, 2);
 buf[5] = GET_BYTE(reg, 3);
 stat = i2cwrite(state, buf,
   MXL_HYDRA_I2C_HDR_SIZE + MXL_HYDRA_REG_SIZE_IN_BYTES);
 if (!stat) {
  stat = i2cread(state, data, size);
  convert_endian(MXL_ENABLE_BIG_ENDIAN, size, data);
 }
 mutex_unlock(&state->base->i2c_lock);
 return stat;
}
