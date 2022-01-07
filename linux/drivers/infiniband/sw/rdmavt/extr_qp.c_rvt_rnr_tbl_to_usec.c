
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t IB_AETH_CREDIT_MASK ;
 unsigned long* ib_rvt_rnr_table ;

unsigned long rvt_rnr_tbl_to_usec(u32 index)
{
 return ib_rvt_rnr_table[(index & IB_AETH_CREDIT_MASK)];
}
