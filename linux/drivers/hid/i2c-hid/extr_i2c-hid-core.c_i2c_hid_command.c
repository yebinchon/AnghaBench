
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_hid_cmd {int dummy; } ;
struct i2c_client {int dummy; } ;


 int __i2c_hid_command (struct i2c_client*,struct i2c_hid_cmd const*,int ,int ,int *,int ,unsigned char*,int) ;

__attribute__((used)) static int i2c_hid_command(struct i2c_client *client,
  const struct i2c_hid_cmd *command,
  unsigned char *buf_recv, int data_len)
{
 return __i2c_hid_command(client, command, 0, 0, ((void*)0), 0,
    buf_recv, data_len);
}
