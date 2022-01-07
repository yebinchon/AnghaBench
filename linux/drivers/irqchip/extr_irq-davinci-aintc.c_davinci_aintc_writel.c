
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ davinci_aintc_base ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void davinci_aintc_writel(unsigned long value, int offset)
{
 writel_relaxed(value, davinci_aintc_base + offset);
}
