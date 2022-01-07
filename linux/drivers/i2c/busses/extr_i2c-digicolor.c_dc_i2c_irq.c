
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dc_i2c {int state; int lock; int done; TYPE_1__* msg; int msgbuf_ptr; int error; scalar_t__ regs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int flags; int len; } ;


 int EIO ;
 int I2C_M_RD ;
 int II_CMD_STATUS_ABORT ;
 int II_CMD_STATUS_ACK_BAD ;
 scalar_t__ II_INTFLAG_CLEAR ;
 int IRQ_HANDLED ;

 int STATE_IDLE ;




 int complete (int *) ;
 int dc_i2c_addr_cmd (TYPE_1__*) ;
 int dc_i2c_cmd_status (struct dc_i2c*) ;
 int dc_i2c_next_read (struct dc_i2c*) ;
 int dc_i2c_read_buf (struct dc_i2c*) ;
 int dc_i2c_stop (struct dc_i2c*) ;
 int dc_i2c_write_buf (struct dc_i2c*) ;
 int dc_i2c_write_byte (struct dc_i2c*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t dc_i2c_irq(int irq, void *dev_id)
{
 struct dc_i2c *i2c = dev_id;
 int cmd_status = dc_i2c_cmd_status(i2c);
 unsigned long flags;
 u8 addr_cmd;

 writeb_relaxed(1, i2c->regs + II_INTFLAG_CLEAR);

 spin_lock_irqsave(&i2c->lock, flags);

 if (cmd_status == II_CMD_STATUS_ACK_BAD
     || cmd_status == II_CMD_STATUS_ABORT) {
  i2c->error = -EIO;
  complete(&i2c->done);
  goto out;
 }

 switch (i2c->state) {
 case 130:
  addr_cmd = dc_i2c_addr_cmd(i2c->msg);
  dc_i2c_write_byte(i2c, addr_cmd);
  i2c->state = 132;
  break;
 case 132:
  if (i2c->msg->flags & I2C_M_RD) {
   dc_i2c_next_read(i2c);
   i2c->state = 131;
   break;
  }
  i2c->state = 128;

 case 128:
  if (i2c->msgbuf_ptr < i2c->msg->len)
   dc_i2c_write_buf(i2c);
  else
   dc_i2c_stop(i2c);
  break;
 case 131:
  if (i2c->msgbuf_ptr < i2c->msg->len)
   dc_i2c_read_buf(i2c);
  else
   dc_i2c_stop(i2c);
  break;
 case 129:
  i2c->state = STATE_IDLE;
  complete(&i2c->done);
  break;
 }

out:
 spin_unlock_irqrestore(&i2c->lock, flags);
 return IRQ_HANDLED;
}
