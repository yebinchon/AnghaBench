
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int len; } ;



__attribute__((used)) static bool
mv64xxx_i2c_valid_offload_sz(struct i2c_msg *msg)
{
 return msg->len <= 8 && msg->len >= 1;
}
