
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ REG_OFF_OFFSET ;
 scalar_t__ evic_base ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void pic32_bind_evic_interrupt(int irq, int set)
{
 writel(set, evic_base + REG_OFF_OFFSET + irq * 4);
}
