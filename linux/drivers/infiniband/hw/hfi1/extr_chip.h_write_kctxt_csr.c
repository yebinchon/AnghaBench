
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct hfi1_devdata {int dummy; } ;


 int write_csr (struct hfi1_devdata*,scalar_t__,int ) ;

__attribute__((used)) static inline void write_kctxt_csr(struct hfi1_devdata *dd, int ctxt,
       u32 offset0, u64 value)
{

 write_csr(dd, offset0 + (0x100 * ctxt), value);
}
