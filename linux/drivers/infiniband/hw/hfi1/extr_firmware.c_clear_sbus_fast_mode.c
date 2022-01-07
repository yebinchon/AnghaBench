
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct hfi1_devdata {int dummy; } ;


 int ASIC_CFG_SBUS_EXECUTE ;
 int ASIC_STS_SBUS_COUNTERS ;
 int EXECUTE ;
 int RCV_DATA_VALID ;
 scalar_t__ SBUS_COUNTER (scalar_t__,int ) ;
 scalar_t__ SBUS_MAX_POLL_COUNT ;
 scalar_t__ read_csr (struct hfi1_devdata*,int ) ;
 int udelay (int) ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

void clear_sbus_fast_mode(struct hfi1_devdata *dd)
{
 u64 reg, count = 0;

 reg = read_csr(dd, ASIC_STS_SBUS_COUNTERS);
 while (SBUS_COUNTER(reg, EXECUTE) !=
        SBUS_COUNTER(reg, RCV_DATA_VALID)) {
  if (count++ >= SBUS_MAX_POLL_COUNT)
   break;
  udelay(1);
  reg = read_csr(dd, ASIC_STS_SBUS_COUNTERS);
 }
 write_csr(dd, ASIC_CFG_SBUS_EXECUTE, 0);
}
