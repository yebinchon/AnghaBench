
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int SC (int ) ;
 int STATUS ;
 int STATUS_CTXT_HALTED_SMASK ;
 int read_kctxt_csr (struct hfi1_devdata*,int ,int) ;

__attribute__((used)) static bool is_sc_halted(struct hfi1_devdata *dd, u32 hw_context)
{
 return !!(read_kctxt_csr(dd, hw_context, SC(STATUS)) &
    SC(STATUS_CTXT_HALTED_SMASK));
}
