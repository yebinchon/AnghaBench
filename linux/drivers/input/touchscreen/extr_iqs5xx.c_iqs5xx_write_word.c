
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val_buf ;
typedef int u16 ;
struct i2c_client {int dummy; } ;
typedef int __be16 ;


 int cpu_to_be16 (int ) ;
 int iqs5xx_write_burst (struct i2c_client*,int ,int *,int) ;

__attribute__((used)) static int iqs5xx_write_word(struct i2c_client *client, u16 reg, u16 val)
{
 __be16 val_buf = cpu_to_be16(val);

 return iqs5xx_write_burst(client, reg, &val_buf, sizeof(val_buf));
}
