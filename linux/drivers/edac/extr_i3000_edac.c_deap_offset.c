
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int I3000_DEAP_GRAIN ;
 int PAGE_MASK ;

__attribute__((used)) static inline unsigned long deap_offset(u32 deap)
{
 return deap & ~(I3000_DEAP_GRAIN - 1) & ~PAGE_MASK;
}
