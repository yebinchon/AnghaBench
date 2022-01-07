
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100irq_state {int icmr; int iclr; int iccr; scalar_t__ saved; } ;


 scalar_t__ ICCR ;
 scalar_t__ ICLR ;
 scalar_t__ ICMR ;
 scalar_t__ iobase ;
 struct sa1100irq_state sa1100irq_state ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void sa1100irq_resume(void)
{
 struct sa1100irq_state *st = &sa1100irq_state;

 if (st->saved) {
  writel_relaxed(st->iccr, iobase + ICCR);
  writel_relaxed(st->iclr, iobase + ICLR);

  writel_relaxed(st->icmr, iobase + ICMR);
 }
}
