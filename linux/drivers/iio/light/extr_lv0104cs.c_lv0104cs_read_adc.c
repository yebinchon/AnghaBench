
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;
typedef int regval ;
typedef int __be16 ;


 int EIO ;
 int be16_to_cpu (int ) ;
 int i2c_master_recv (struct i2c_client*,char*,int) ;

__attribute__((used)) static int lv0104cs_read_adc(struct i2c_client *client, u16 *adc_output)
{
 __be16 regval;
 int ret;

 ret = i2c_master_recv(client, (char *)&regval, sizeof(regval));
 if (ret < 0)
  return ret;
 if (ret != sizeof(regval))
  return -EIO;

 *adc_output = be16_to_cpu(regval);

 return 0;
}
