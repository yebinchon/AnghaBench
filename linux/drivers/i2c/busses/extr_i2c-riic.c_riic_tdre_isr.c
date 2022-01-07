
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct riic_dev {scalar_t__ bytes_left; scalar_t__ base; int * buf; TYPE_1__* msg; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int flags; scalar_t__ len; } ;


 int I2C_M_RD ;
 int ICIER_RIE ;
 int ICIER_TEIE ;
 int ICIER_TIE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ RIIC_ICDRT ;
 int RIIC_ICIER ;
 scalar_t__ RIIC_INIT_MSG ;
 int i2c_8bit_addr_from_msg (TYPE_1__*) ;
 int riic_clear_set_bit (struct riic_dev*,int ,int ,int ) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t riic_tdre_isr(int irq, void *data)
{
 struct riic_dev *riic = data;
 u8 val;

 if (!riic->bytes_left)
  return IRQ_NONE;

 if (riic->bytes_left == RIIC_INIT_MSG) {
  if (riic->msg->flags & I2C_M_RD)

   riic_clear_set_bit(riic, ICIER_TIE, ICIER_RIE, RIIC_ICIER);
  else

   riic->bytes_left = riic->msg->len;

  val = i2c_8bit_addr_from_msg(riic->msg);
 } else {
  val = *riic->buf;
  riic->buf++;
  riic->bytes_left--;
 }






 if (riic->bytes_left == 0)
  riic_clear_set_bit(riic, ICIER_TIE, ICIER_TEIE, RIIC_ICIER);






 writeb(val, riic->base + RIIC_ICDRT);

 return IRQ_HANDLED;
}
