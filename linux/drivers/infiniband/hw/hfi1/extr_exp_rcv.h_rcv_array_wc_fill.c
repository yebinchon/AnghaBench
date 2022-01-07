
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_devdata {int flags; scalar_t__ rcvarray_wc; } ;


 int HFI1_PRESENT ;
 int flush_wc () ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static inline void rcv_array_wc_fill(struct hfi1_devdata *dd, u32 index)
{




 if ((dd->flags & HFI1_PRESENT) && dd->rcvarray_wc) {
  writeq(0, dd->rcvarray_wc + (index * 8));
  if ((index & 3) == 3)
   flush_wc();
 }
}
