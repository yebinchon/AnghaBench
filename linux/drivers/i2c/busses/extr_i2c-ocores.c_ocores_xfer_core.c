
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ocores_i2c {int nmsgs; scalar_t__ state; int wait; struct i2c_msg* msg; scalar_t__ pos; } ;
struct i2c_msg {int dummy; } ;


 int EIO ;
 int ETIMEDOUT ;
 int HZ ;
 int OCI2C_CMD ;
 int OCI2C_CMD_START ;
 int OCI2C_CONTROL ;
 int OCI2C_CTRL_IEN ;
 int OCI2C_DATA ;
 scalar_t__ STATE_DONE ;
 scalar_t__ STATE_ERROR ;
 scalar_t__ STATE_START ;
 int i2c_8bit_addr_from_msg (struct i2c_msg*) ;
 int oc_getreg (struct ocores_i2c*,int ) ;
 int oc_setreg (struct ocores_i2c*,int ,int) ;
 int ocores_process_polling (struct ocores_i2c*) ;
 int ocores_process_timeout (struct ocores_i2c*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int ocores_xfer_core(struct ocores_i2c *i2c,
       struct i2c_msg *msgs, int num,
       bool polling)
{
 int ret;
 u8 ctrl;

 ctrl = oc_getreg(i2c, OCI2C_CONTROL);
 if (polling)
  oc_setreg(i2c, OCI2C_CONTROL, ctrl & ~OCI2C_CTRL_IEN);
 else
  oc_setreg(i2c, OCI2C_CONTROL, ctrl | OCI2C_CTRL_IEN);

 i2c->msg = msgs;
 i2c->pos = 0;
 i2c->nmsgs = num;
 i2c->state = STATE_START;

 oc_setreg(i2c, OCI2C_DATA, i2c_8bit_addr_from_msg(i2c->msg));
 oc_setreg(i2c, OCI2C_CMD, OCI2C_CMD_START);

 if (polling) {
  ocores_process_polling(i2c);
 } else {
  ret = wait_event_timeout(i2c->wait,
      (i2c->state == STATE_ERROR) ||
      (i2c->state == STATE_DONE), HZ);
  if (ret == 0) {
   ocores_process_timeout(i2c);
   return -ETIMEDOUT;
  }
 }

 return (i2c->state == STATE_DONE) ? num : -EIO;
}
