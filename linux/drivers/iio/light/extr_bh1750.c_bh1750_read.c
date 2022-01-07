
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bh1750_data {unsigned long mtreg; int client; struct bh1750_chip_info* chip_info; } ;
struct bh1750_chip_info {unsigned long mtreg_to_usec; } ;
typedef int __be16 ;


 int BH1750_ONE_TIME_H_RES_MODE ;
 int be16_to_cpu (int ) ;
 int i2c_master_recv (int ,char*,int) ;
 int i2c_smbus_write_byte (int ,int ) ;
 int usleep_range (unsigned long,unsigned long) ;

__attribute__((used)) static int bh1750_read(struct bh1750_data *data, int *val)
{
 int ret;
 __be16 result;
 const struct bh1750_chip_info *chip_info = data->chip_info;
 unsigned long delay = chip_info->mtreg_to_usec * data->mtreg;





 ret = i2c_smbus_write_byte(data->client, BH1750_ONE_TIME_H_RES_MODE);
 if (ret < 0)
  return ret;

 usleep_range(delay + 15000, delay + 40000);

 ret = i2c_master_recv(data->client, (char *)&result, 2);
 if (ret < 0)
  return ret;

 *val = be16_to_cpu(result);

 return 0;
}
