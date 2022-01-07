
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t IB_AETH_CREDIT_MASK ;
 size_t IB_AETH_CREDIT_SHIFT ;
 unsigned long* ib_rvt_rnr_table ;

__attribute__((used)) static inline unsigned long rvt_aeth_to_usec(u32 aeth)
{
 return ib_rvt_rnr_table[(aeth >> IB_AETH_CREDIT_SHIFT) &
      IB_AETH_CREDIT_MASK];
}
