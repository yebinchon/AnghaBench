
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_i2c {scalar_t__ state; scalar_t__ pos; scalar_t__ count; int lock; int done; TYPE_1__* msg; int error; int dev; scalar_t__ regs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ buf; scalar_t__ len; } ;


 int ENXIO ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ REG_CTRL ;
 unsigned int REG_CTRL_ERROR ;
 int REG_CTRL_START ;
 scalar_t__ STATE_IDLE ;
 scalar_t__ STATE_READ ;
 int complete (int *) ;
 int dev_dbg (int ,char*,...) ;
 int meson_i2c_get_data (struct meson_i2c*,scalar_t__,scalar_t__) ;
 int meson_i2c_prepare_xfer (struct meson_i2c*) ;
 int meson_i2c_reset_tokens (struct meson_i2c*) ;
 int meson_i2c_set_mask (struct meson_i2c*,scalar_t__,int ,int ) ;
 unsigned int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t meson_i2c_irq(int irqno, void *dev_id)
{
 struct meson_i2c *i2c = dev_id;
 unsigned int ctrl;

 spin_lock(&i2c->lock);

 meson_i2c_reset_tokens(i2c);
 meson_i2c_set_mask(i2c, REG_CTRL, REG_CTRL_START, 0);
 ctrl = readl(i2c->regs + REG_CTRL);

 dev_dbg(i2c->dev, "irq: state %d, pos %d, count %d, ctrl %08x\n",
  i2c->state, i2c->pos, i2c->count, ctrl);

 if (i2c->state == STATE_IDLE) {
  spin_unlock(&i2c->lock);
  return IRQ_NONE;
 }

 if (ctrl & REG_CTRL_ERROR) {






  dev_dbg(i2c->dev, "error bit set\n");
  i2c->error = -ENXIO;
  i2c->state = STATE_IDLE;
  complete(&i2c->done);
  goto out;
 }

 if (i2c->state == STATE_READ && i2c->count)
  meson_i2c_get_data(i2c, i2c->msg->buf + i2c->pos, i2c->count);

 i2c->pos += i2c->count;

 if (i2c->pos >= i2c->msg->len) {
  i2c->state = STATE_IDLE;
  complete(&i2c->done);
  goto out;
 }


 meson_i2c_prepare_xfer(i2c);
 meson_i2c_set_mask(i2c, REG_CTRL, REG_CTRL_START, REG_CTRL_START);
out:
 spin_unlock(&i2c->lock);

 return IRQ_HANDLED;
}
