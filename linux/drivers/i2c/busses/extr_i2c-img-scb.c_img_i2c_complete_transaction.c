
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_i2c {int msg_status; int msg_complete; } ;


 int MODE_INACTIVE ;
 int complete (int *) ;
 int img_i2c_switch_mode (struct img_i2c*,int ) ;
 int img_i2c_transaction_halt (struct img_i2c*,int) ;

__attribute__((used)) static void img_i2c_complete_transaction(struct img_i2c *i2c, int status)
{
 img_i2c_switch_mode(i2c, MODE_INACTIVE);
 if (status) {
  i2c->msg_status = status;
  img_i2c_transaction_halt(i2c, 0);
 }
 complete(&i2c->msg_complete);
}
