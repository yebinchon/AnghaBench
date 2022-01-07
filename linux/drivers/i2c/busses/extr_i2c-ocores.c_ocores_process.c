
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ocores_i2c {scalar_t__ state; int pos; int process_lock; scalar_t__ nmsgs; struct i2c_msg* msg; int wait; } ;
struct i2c_msg {int flags; int* buf; int len; } ;


 int I2C_M_NOSTART ;
 int I2C_M_RD ;
 int OCI2C_CMD ;
 int OCI2C_CMD_IACK ;
 int OCI2C_CMD_READ_ACK ;
 int OCI2C_CMD_READ_NACK ;
 int OCI2C_CMD_START ;
 int OCI2C_CMD_STOP ;
 int OCI2C_CMD_WRITE ;
 int OCI2C_DATA ;
 int OCI2C_STAT_ARBLOST ;
 int OCI2C_STAT_NACK ;
 scalar_t__ STATE_DONE ;
 scalar_t__ STATE_ERROR ;
 scalar_t__ STATE_READ ;
 scalar_t__ STATE_START ;
 scalar_t__ STATE_WRITE ;
 int i2c_8bit_addr_from_msg (struct i2c_msg*) ;
 int oc_getreg (struct ocores_i2c*,int ) ;
 int oc_setreg (struct ocores_i2c*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void ocores_process(struct ocores_i2c *i2c, u8 stat)
{
 struct i2c_msg *msg = i2c->msg;
 unsigned long flags;





 spin_lock_irqsave(&i2c->process_lock, flags);

 if ((i2c->state == STATE_DONE) || (i2c->state == STATE_ERROR)) {

  oc_setreg(i2c, OCI2C_CMD, OCI2C_CMD_IACK);
  wake_up(&i2c->wait);
  goto out;
 }


 if (stat & OCI2C_STAT_ARBLOST) {
  i2c->state = STATE_ERROR;
  oc_setreg(i2c, OCI2C_CMD, OCI2C_CMD_STOP);
  goto out;
 }

 if ((i2c->state == STATE_START) || (i2c->state == STATE_WRITE)) {
  i2c->state =
   (msg->flags & I2C_M_RD) ? STATE_READ : STATE_WRITE;

  if (stat & OCI2C_STAT_NACK) {
   i2c->state = STATE_ERROR;
   oc_setreg(i2c, OCI2C_CMD, OCI2C_CMD_STOP);
   goto out;
  }
 } else {
  msg->buf[i2c->pos++] = oc_getreg(i2c, OCI2C_DATA);
 }


 if (i2c->pos == msg->len) {
  i2c->nmsgs--;
  i2c->msg++;
  i2c->pos = 0;
  msg = i2c->msg;

  if (i2c->nmsgs) {

   if (!(msg->flags & I2C_M_NOSTART)) {
    u8 addr = i2c_8bit_addr_from_msg(msg);

    i2c->state = STATE_START;

    oc_setreg(i2c, OCI2C_DATA, addr);
    oc_setreg(i2c, OCI2C_CMD, OCI2C_CMD_START);
    goto out;
   }
   i2c->state = (msg->flags & I2C_M_RD)
    ? STATE_READ : STATE_WRITE;
  } else {
   i2c->state = STATE_DONE;
   oc_setreg(i2c, OCI2C_CMD, OCI2C_CMD_STOP);
   goto out;
  }
 }

 if (i2c->state == STATE_READ) {
  oc_setreg(i2c, OCI2C_CMD, i2c->pos == (msg->len-1) ?
     OCI2C_CMD_READ_NACK : OCI2C_CMD_READ_ACK);
 } else {
  oc_setreg(i2c, OCI2C_DATA, msg->buf[i2c->pos++]);
  oc_setreg(i2c, OCI2C_CMD, OCI2C_CMD_WRITE);
 }

out:
 spin_unlock_irqrestore(&i2c->process_lock, flags);
}
