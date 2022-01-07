
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; } ;
struct dc_i2c {int state; struct i2c_msg* msg; } ;


 int I2C_M_NOSTART ;
 int I2C_M_RD ;
 int II_CMD_RESTART ;
 int II_CMD_START ;
 int STATE_READ ;
 int STATE_START ;
 int STATE_WRITE ;
 int dc_i2c_cmd (struct dc_i2c*,int ) ;
 int dc_i2c_next_read (struct dc_i2c*) ;
 int dc_i2c_write_buf (struct dc_i2c*) ;

__attribute__((used)) static void dc_i2c_start_msg(struct dc_i2c *i2c, int first)
{
 struct i2c_msg *msg = i2c->msg;

 if (!(msg->flags & I2C_M_NOSTART)) {
  i2c->state = STATE_START;
  dc_i2c_cmd(i2c, first ? II_CMD_START : II_CMD_RESTART);
 } else if (msg->flags & I2C_M_RD) {
  i2c->state = STATE_READ;
  dc_i2c_next_read(i2c);
 } else {
  i2c->state = STATE_WRITE;
  dc_i2c_write_buf(i2c);
 }
}
