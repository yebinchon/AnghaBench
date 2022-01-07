
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ davinci_aintc_base ;
 unsigned long readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline unsigned long davinci_aintc_readl(int offset)
{
 return readl_relaxed(davinci_aintc_base + offset);
}
