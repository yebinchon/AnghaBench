
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;
typedef int data ;
typedef int __be16 ;


 int be16_to_cpu (int ) ;
 int vl6180_read (struct i2c_client*,int ,int *,int) ;

__attribute__((used)) static int vl6180_read_word(struct i2c_client *client, u16 cmd)
{
 __be16 data;
 int ret;

 ret = vl6180_read(client, cmd, &data, sizeof(data));
 if (ret < 0)
  return ret;

 return be16_to_cpu(data);
}
