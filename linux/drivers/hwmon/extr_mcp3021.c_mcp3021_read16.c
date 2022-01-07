
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mcp3021_data {int sar_shift; int sar_mask; } ;
struct i2c_client {int dummy; } ;
typedef int __be16 ;


 int EIO ;
 int be16_to_cpu (int ) ;
 struct mcp3021_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_master_recv (struct i2c_client*,char*,int) ;

__attribute__((used)) static int mcp3021_read16(struct i2c_client *client)
{
 struct mcp3021_data *data = i2c_get_clientdata(client);
 int ret;
 u16 reg;
 __be16 buf;

 ret = i2c_master_recv(client, (char *)&buf, 2);
 if (ret < 0)
  return ret;
 if (ret != 2)
  return -EIO;


 reg = be16_to_cpu(buf);





 reg = (reg >> data->sar_shift) & data->sar_mask;

 return reg;
}
