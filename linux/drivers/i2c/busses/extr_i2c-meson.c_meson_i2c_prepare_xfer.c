
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_i2c {int count; scalar_t__ pos; scalar_t__ regs; int * tokens; TYPE_1__* msg; scalar_t__ last; } ;
struct TYPE_2__ {int flags; scalar_t__ len; scalar_t__ buf; } ;


 int I2C_M_RD ;
 scalar_t__ REG_TOK_LIST0 ;
 scalar_t__ REG_TOK_LIST1 ;
 int TOKEN_DATA ;
 int TOKEN_DATA_LAST ;
 int TOKEN_STOP ;
 int meson_i2c_add_token (struct meson_i2c*,int ) ;
 int meson_i2c_put_data (struct meson_i2c*,scalar_t__,int) ;
 int min (scalar_t__,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void meson_i2c_prepare_xfer(struct meson_i2c *i2c)
{
 bool write = !(i2c->msg->flags & I2C_M_RD);
 int i;

 i2c->count = min(i2c->msg->len - i2c->pos, 8);

 for (i = 0; i < i2c->count - 1; i++)
  meson_i2c_add_token(i2c, TOKEN_DATA);

 if (i2c->count) {
  if (write || i2c->pos + i2c->count < i2c->msg->len)
   meson_i2c_add_token(i2c, TOKEN_DATA);
  else
   meson_i2c_add_token(i2c, TOKEN_DATA_LAST);
 }

 if (write)
  meson_i2c_put_data(i2c, i2c->msg->buf + i2c->pos, i2c->count);

 if (i2c->last && i2c->pos + i2c->count >= i2c->msg->len)
  meson_i2c_add_token(i2c, TOKEN_STOP);

 writel(i2c->tokens[0], i2c->regs + REG_TOK_LIST0);
 writel(i2c->tokens[1], i2c->regs + REG_TOK_LIST1);
}
