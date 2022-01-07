
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ davinci_cp_intc_base ;
 unsigned int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline unsigned int davinci_cp_intc_read(unsigned int offset)
{
 return readl_relaxed(davinci_cp_intc_base + offset);
}
