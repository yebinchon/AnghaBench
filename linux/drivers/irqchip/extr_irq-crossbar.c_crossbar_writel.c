
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* register_offsets; scalar_t__ crossbar_base; } ;


 TYPE_1__* cb ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void crossbar_writel(int irq_no, int cb_no)
{
 writel(cb_no, cb->crossbar_base + cb->register_offsets[irq_no]);
}
