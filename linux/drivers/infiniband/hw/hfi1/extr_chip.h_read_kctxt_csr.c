
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct hfi1_devdata {int dummy; } ;


 int read_csr (struct hfi1_devdata const*,scalar_t__) ;

__attribute__((used)) static inline u64 read_kctxt_csr(const struct hfi1_devdata *dd, int ctxt,
     u32 offset0)
{

 return read_csr(dd, offset0 + (0x100 * ctxt));
}
