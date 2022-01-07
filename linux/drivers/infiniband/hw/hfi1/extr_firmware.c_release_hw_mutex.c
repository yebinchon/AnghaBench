
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct hfi1_devdata {int hfi1_id; } ;


 int ASIC_CFG_MUTEX ;
 int dd_dev_warn (struct hfi1_devdata*,char*,int ,int ) ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

void release_hw_mutex(struct hfi1_devdata *dd)
{
 u8 mask = 1 << dd->hfi1_id;
 u8 user = (u8)read_csr(dd, ASIC_CFG_MUTEX);

 if (user != mask)
  dd_dev_warn(dd,
       "Unable to release hardware mutex, mutex mask %u, my mask %u\n",
       (u32)user, (u32)mask);
 else
  write_csr(dd, ASIC_CFG_MUTEX, 0);
}
