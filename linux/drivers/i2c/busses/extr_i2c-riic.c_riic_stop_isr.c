
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct riic_dev {int msg_done; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ RIIC_ICIER ;
 scalar_t__ RIIC_ICSR2 ;
 int complete (int *) ;
 int readb (scalar_t__) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t riic_stop_isr(int irq, void *data)
{
 struct riic_dev *riic = data;


 writeb(0, riic->base + RIIC_ICSR2);
 readb(riic->base + RIIC_ICSR2);
 writeb(0, riic->base + RIIC_ICIER);
 readb(riic->base + RIIC_ICIER);

 complete(&riic->msg_done);

 return IRQ_HANDLED;
}
