
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mpu3050 {int dev; int map; } ;
typedef int otp ;


 int MPU3050_INT_CFG ;
 int MPU3050_MEM_OTP_BANK_0 ;
 int MPU3050_MEM_PRFTCH ;
 int MPU3050_MEM_USER_BANK ;
 int MPU3050_PWR_MGM ;
 int MPU3050_PWR_MGM_CLKSEL_MASK ;
 int MPU3050_PWR_MGM_PLL_Z ;
 int MPU3050_PWR_MGM_RESET ;
 int add_device_randomness (int*,int) ;
 int dev_info (int ,char*,int,int,int,int,int,int) ;
 int mpu3050_read_mem (struct mpu3050*,int,int ,int,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int mpu3050_hw_init(struct mpu3050 *mpu3050)
{
 int ret;
 u8 otp[8];


 ret = regmap_update_bits(mpu3050->map,
     MPU3050_PWR_MGM,
     MPU3050_PWR_MGM_RESET,
     MPU3050_PWR_MGM_RESET);
 if (ret)
  return ret;


 ret = regmap_update_bits(mpu3050->map,
     MPU3050_PWR_MGM,
     MPU3050_PWR_MGM_CLKSEL_MASK,
     MPU3050_PWR_MGM_PLL_Z);
 if (ret)
  return ret;


 ret = regmap_write(mpu3050->map,
      MPU3050_INT_CFG,
      0);
 if (ret)
  return ret;


 ret = mpu3050_read_mem(mpu3050,
          (MPU3050_MEM_PRFTCH |
    MPU3050_MEM_USER_BANK |
    MPU3050_MEM_OTP_BANK_0),
          0,
          sizeof(otp),
          otp);
 if (ret)
  return ret;


 add_device_randomness(otp, sizeof(otp));

 dev_info(mpu3050->dev,
   "die ID: %04X, wafer ID: %02X, A lot ID: %04X, "
   "W lot ID: %03X, WP ID: %01X, rev ID: %02X\n",

   (otp[1] << 8 | otp[0]) & 0x1fff,

   ((otp[2] << 8 | otp[1]) & 0x03e0) >> 5,

   ((otp[4] << 16 | otp[3] << 8 | otp[2]) & 0x3fffc) >> 2,

   ((otp[5] << 8 | otp[4]) & 0x3ffc) >> 2,

   ((otp[6] << 8 | otp[5]) & 0x0380) >> 7,

   otp[6] >> 2);

 return 0;
}
