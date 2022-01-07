
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct riic_dev {int msg_done; scalar_t__ base; int err; scalar_t__ is_last; scalar_t__ bytes_left; } ;
typedef int irqreturn_t ;


 int ENXIO ;
 int ICCR2_SP ;
 int ICIER_SPIE ;
 int ICIER_TEIE ;
 int ICSR2_NACKF ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ RIIC_ICCR2 ;
 scalar_t__ RIIC_ICDRR ;
 scalar_t__ RIIC_ICIER ;
 scalar_t__ RIIC_ICSR2 ;
 int complete (int *) ;
 int readb (scalar_t__) ;
 int riic_clear_set_bit (struct riic_dev*,int,int ,scalar_t__) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t riic_tend_isr(int irq, void *data)
{
 struct riic_dev *riic = data;

 if (readb(riic->base + RIIC_ICSR2) & ICSR2_NACKF) {

  readb(riic->base + RIIC_ICDRR);
  riic_clear_set_bit(riic, ICSR2_NACKF, 0, RIIC_ICSR2);
  riic->err = -ENXIO;
 } else if (riic->bytes_left) {
  return IRQ_NONE;
 }

 if (riic->is_last || riic->err) {
  riic_clear_set_bit(riic, ICIER_TEIE, ICIER_SPIE, RIIC_ICIER);
  writeb(ICCR2_SP, riic->base + RIIC_ICCR2);
 } else {

  riic_clear_set_bit(riic, ICIER_TEIE, 0, RIIC_ICIER);
  complete(&riic->msg_done);
 }

 return IRQ_HANDLED;
}
