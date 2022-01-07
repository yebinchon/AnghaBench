
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct hfi1_devdata {int dc8051_memlock; } ;


 int DC_DC8051_CFG_RAM_ACCESS_CTRL ;
 int DC_DC8051_CFG_RAM_ACCESS_SETUP ;
 int __read_8051_data (struct hfi1_devdata*,scalar_t__,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

int read_8051_data(struct hfi1_devdata *dd, u32 addr, u32 len, u64 *result)
{
 unsigned long flags;
 u32 done;
 int ret = 0;

 spin_lock_irqsave(&dd->dc8051_memlock, flags);


 write_csr(dd, DC_DC8051_CFG_RAM_ACCESS_SETUP, 0);

 for (done = 0; done < len; addr += 8, done += 8, result++) {
  ret = __read_8051_data(dd, addr, result);
  if (ret)
   break;
 }


 write_csr(dd, DC_DC8051_CFG_RAM_ACCESS_CTRL, 0);

 spin_unlock_irqrestore(&dd->dc8051_memlock, flags);

 return ret;
}
