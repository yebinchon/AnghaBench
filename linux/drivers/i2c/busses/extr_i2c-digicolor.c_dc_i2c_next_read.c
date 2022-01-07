
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_i2c {scalar_t__ msgbuf_ptr; TYPE_1__* msg; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int II_CMD_GET_ACK ;
 int II_CMD_GET_NOACK ;
 int dc_i2c_cmd (struct dc_i2c*,int ) ;

__attribute__((used)) static void dc_i2c_next_read(struct dc_i2c *i2c)
{
 bool last = (i2c->msgbuf_ptr + 1 == i2c->msg->len);

 dc_i2c_cmd(i2c, last ? II_CMD_GET_NOACK : II_CMD_GET_ACK);
}
