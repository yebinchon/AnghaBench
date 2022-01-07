
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;
struct ad5686_state {TYPE_1__* data; int dev; } ;
struct TYPE_2__ {int * d8; int d32; } ;


 int AD5686_ADDR (int ) ;
 int AD5686_CMD (int ) ;
 int EIO ;
 int cpu_to_be32 (int) ;
 int i2c_master_send (struct i2c_client*,int *,int) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static int ad5686_i2c_write(struct ad5686_state *st,
       u8 cmd, u8 addr, u16 val)
{
 struct i2c_client *i2c = to_i2c_client(st->dev);
 int ret;

 st->data[0].d32 = cpu_to_be32(AD5686_CMD(cmd) | AD5686_ADDR(addr)
          | val);

 ret = i2c_master_send(i2c, &st->data[0].d8[1], 3);
 if (ret < 0)
  return ret;

 return (ret != 3) ? -EIO : 0;
}
