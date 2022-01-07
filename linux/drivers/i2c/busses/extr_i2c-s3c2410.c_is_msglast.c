
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c24xx_i2c {int msg_ptr; TYPE_1__* msg; } ;
struct TYPE_2__ {int flags; int len; } ;


 int I2C_M_RECV_LEN ;

__attribute__((used)) static inline int is_msglast(struct s3c24xx_i2c *i2c)
{





 if (i2c->msg->flags & I2C_M_RECV_LEN && i2c->msg->len == 1)
  return 0;

 return i2c->msg_ptr == i2c->msg->len-1;
}
