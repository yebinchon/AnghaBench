
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mpu3050 {int map; } ;


 int MPU3050_BANK_SEL ;
 int MPU3050_MEM_R_W ;
 int MPU3050_MEM_START_ADDR ;
 int regmap_bulk_read (int ,int ,int *,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int mpu3050_read_mem(struct mpu3050 *mpu3050,
       u8 bank,
       u8 addr,
       u8 len,
       u8 *buf)
{
 int ret;

 ret = regmap_write(mpu3050->map,
      MPU3050_BANK_SEL,
      bank);
 if (ret)
  return ret;

 ret = regmap_write(mpu3050->map,
      MPU3050_MEM_START_ADDR,
      addr);
 if (ret)
  return ret;

 return regmap_bulk_read(mpu3050->map,
    MPU3050_MEM_R_W,
    buf,
    len);
}
