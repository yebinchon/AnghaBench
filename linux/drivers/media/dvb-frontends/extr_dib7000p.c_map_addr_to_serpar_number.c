
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int* buf; } ;


 int EINVAL ;

__attribute__((used)) static int map_addr_to_serpar_number(struct i2c_msg *msg)
{
 if ((msg->buf[0] <= 15))
  msg->buf[0] -= 1;
 else if (msg->buf[0] == 17)
  msg->buf[0] = 15;
 else if (msg->buf[0] == 16)
  msg->buf[0] = 17;
 else if (msg->buf[0] == 19)
  msg->buf[0] = 16;
 else if (msg->buf[0] >= 21 && msg->buf[0] <= 25)
  msg->buf[0] -= 3;
 else if (msg->buf[0] == 28)
  msg->buf[0] = 23;
 else
  return -EINVAL;
 return 0;
}
