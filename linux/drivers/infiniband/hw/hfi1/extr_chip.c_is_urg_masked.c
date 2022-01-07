
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct hfi1_ctxtdata {int ctxt; int dd; } ;


 int BIT_ULL (int) ;
 scalar_t__ CCE_INT_MASK ;
 int IS_RCVURGENT_START ;
 int read_csr (int ,scalar_t__) ;

bool is_urg_masked(struct hfi1_ctxtdata *rcd)
{
 u64 mask;
 u32 is = IS_RCVURGENT_START + rcd->ctxt;
 u8 bit = is % 64;

 mask = read_csr(rcd->dd, CCE_INT_MASK + (8 * (is / 64)));
 return !(mask & BIT_ULL(bit));
}
