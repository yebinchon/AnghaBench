
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ davinci_cp_intc_base ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void davinci_cp_intc_write(unsigned long value,
      unsigned int offset)
{
 writel_relaxed(value, davinci_cp_intc_base + offset);
}
