
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bma150_data {int input; int client; } ;
typedef int s32 ;
typedef int s16 ;


 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int BMA150_ACC_X_LSB_REG ;
 int BMA150_XYZ_DATA_SIZE ;
 int i2c_smbus_read_i2c_block_data (int ,int ,int,int*) ;
 int input_report_abs (int ,int ,int) ;
 int input_sync (int ) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static void bma150_report_xyz(struct bma150_data *bma150)
{
 u8 data[BMA150_XYZ_DATA_SIZE];
 s16 x, y, z;
 s32 ret;

 ret = i2c_smbus_read_i2c_block_data(bma150->client,
   BMA150_ACC_X_LSB_REG, BMA150_XYZ_DATA_SIZE, data);
 if (ret != BMA150_XYZ_DATA_SIZE)
  return;

 x = ((0xc0 & data[0]) >> 6) | (data[1] << 2);
 y = ((0xc0 & data[2]) >> 6) | (data[3] << 2);
 z = ((0xc0 & data[4]) >> 6) | (data[5] << 2);

 x = sign_extend32(x, 9);
 y = sign_extend32(y, 9);
 z = sign_extend32(z, 9);

 input_report_abs(bma150->input, ABS_X, x);
 input_report_abs(bma150->input, ABS_Y, y);
 input_report_abs(bma150->input, ABS_Z, z);
 input_sync(bma150->input);
}
