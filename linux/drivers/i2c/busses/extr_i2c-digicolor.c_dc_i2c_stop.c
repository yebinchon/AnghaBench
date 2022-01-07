
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_i2c {int done; scalar_t__ last; int state; } ;


 int II_CMD_STOP ;
 int STATE_STOP ;
 int complete (int *) ;
 int dc_i2c_cmd (struct dc_i2c*,int ) ;

__attribute__((used)) static void dc_i2c_stop(struct dc_i2c *i2c)
{
 i2c->state = STATE_STOP;
 if (i2c->last)
  dc_i2c_cmd(i2c, II_CMD_STOP);
 else
  complete(&i2c->done);
}
