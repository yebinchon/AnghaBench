
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct hfi1_devdata {int flags; scalar_t__ rcvarray_wc; } ;


 int HFI1_PRESENT ;
 scalar_t__ PT_EAGER ;
 scalar_t__ PT_INVALID ;
 scalar_t__ PT_INVALID_FLUSH ;
 unsigned long RCV_ARRAY_RT_ADDR_MASK ;
 unsigned long RCV_ARRAY_RT_ADDR_SHIFT ;
 unsigned long RCV_ARRAY_RT_BUF_SIZE_SHIFT ;
 unsigned long RCV_ARRAY_RT_WRITE_ENABLE_SMASK ;
 unsigned long RT_ADDR_SHIFT ;
 int dd_dev_err (struct hfi1_devdata*,char*,scalar_t__,scalar_t__) ;
 int flush_wc () ;
 int trace_hfi1_put_tid (struct hfi1_devdata*,scalar_t__,scalar_t__,unsigned long,scalar_t__) ;
 int trace_hfi1_write_rcvarray (scalar_t__,unsigned long) ;
 int writeq (unsigned long,scalar_t__) ;

void hfi1_put_tid(struct hfi1_devdata *dd, u32 index,
    u32 type, unsigned long pa, u16 order)
{
 u64 reg;

 if (!(dd->flags & HFI1_PRESENT))
  goto done;

 if (type == PT_INVALID || type == PT_INVALID_FLUSH) {
  pa = 0;
  order = 0;
 } else if (type > PT_INVALID) {
  dd_dev_err(dd,
      "unexpected receive array type %u for index %u, not handled\n",
      type, index);
  goto done;
 }
 trace_hfi1_put_tid(dd, index, type, pa, order);


 reg = RCV_ARRAY_RT_WRITE_ENABLE_SMASK
  | (u64)order << RCV_ARRAY_RT_BUF_SIZE_SHIFT
  | ((pa >> 12) & RCV_ARRAY_RT_ADDR_MASK)
     << RCV_ARRAY_RT_ADDR_SHIFT;
 trace_hfi1_write_rcvarray(dd->rcvarray_wc + (index * 8), reg);
 writeq(reg, dd->rcvarray_wc + (index * 8));

 if (type == PT_EAGER || type == PT_INVALID_FLUSH || (index & 3) == 3)





  flush_wc();
done:
 return;
}
