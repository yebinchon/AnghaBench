
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_i2c {int msgbuf_ptr; TYPE_1__* msg; } ;
struct TYPE_2__ {int * buf; } ;


 int dc_i2c_next_read (struct dc_i2c*) ;
 int dc_i2c_read_byte (struct dc_i2c*) ;

__attribute__((used)) static void dc_i2c_read_buf(struct dc_i2c *i2c)
{
 i2c->msg->buf[i2c->msgbuf_ptr++] = dc_i2c_read_byte(i2c);
 dc_i2c_next_read(i2c);
}
