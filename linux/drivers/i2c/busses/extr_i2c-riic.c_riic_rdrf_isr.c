
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct riic_dev {int bytes_left; int * buf; scalar_t__ base; scalar_t__ is_last; TYPE_1__* msg; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int len; } ;


 int ICCR2_SP ;
 int ICIER_SPIE ;
 int ICMR3_ACKBT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ RIIC_ICCR2 ;
 scalar_t__ RIIC_ICDRR ;
 int RIIC_ICIER ;
 int RIIC_ICMR3 ;
 int RIIC_INIT_MSG ;
 int readb (scalar_t__) ;
 int riic_clear_set_bit (struct riic_dev*,int ,int ,int ) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t riic_rdrf_isr(int irq, void *data)
{
 struct riic_dev *riic = data;

 if (!riic->bytes_left)
  return IRQ_NONE;

 if (riic->bytes_left == RIIC_INIT_MSG) {
  riic->bytes_left = riic->msg->len;
  readb(riic->base + RIIC_ICDRR);
  return IRQ_HANDLED;
 }

 if (riic->bytes_left == 1) {

  if (riic->is_last) {
   riic_clear_set_bit(riic, 0, ICIER_SPIE, RIIC_ICIER);
   writeb(ICCR2_SP, riic->base + RIIC_ICCR2);
  }

  riic_clear_set_bit(riic, 0, ICMR3_ACKBT, RIIC_ICMR3);

 } else {
  riic_clear_set_bit(riic, ICMR3_ACKBT, 0, RIIC_ICMR3);
 }


 *riic->buf = readb(riic->base + RIIC_ICDRR);
 riic->buf++;
 riic->bytes_left--;

 return IRQ_HANDLED;
}
