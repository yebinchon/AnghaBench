
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int ASIC_CFG_SBUS_EXECUTE ;
 int ASIC_CFG_SBUS_EXECUTE_EXECUTE_SMASK ;
 int ASIC_STS_SBUS_COUNTERS ;
 int ASIC_STS_SBUS_RESULT ;
 int ASIC_STS_SBUS_RESULT_DONE_SMASK ;
 int ASIC_STS_SBUS_RESULT_RCV_DATA_VALID_SMASK ;
 int ETIME ;
 int ETIMEDOUT ;
 int EXECUTE ;
 int RCV_DATA_VALID ;
 scalar_t__ SBUS_COUNTER (int,int ) ;
 scalar_t__ SBUS_MAX_POLL_COUNT ;
 int clear_sbus_fast_mode (struct hfi1_devdata*) ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int sbus_request (struct hfi1_devdata*,int ,int ,int ,int ) ;
 int udelay (int) ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

int sbus_request_slow(struct hfi1_devdata *dd,
        u8 receiver_addr, u8 data_addr, u8 command, u32 data_in)
{
 u64 reg, count = 0;


 clear_sbus_fast_mode(dd);

 sbus_request(dd, receiver_addr, data_addr, command, data_in);
 write_csr(dd, ASIC_CFG_SBUS_EXECUTE,
    ASIC_CFG_SBUS_EXECUTE_EXECUTE_SMASK);

 reg = read_csr(dd, ASIC_STS_SBUS_RESULT);
 while (!((reg & ASIC_STS_SBUS_RESULT_DONE_SMASK) &&
   (reg & ASIC_STS_SBUS_RESULT_RCV_DATA_VALID_SMASK))) {
  if (count++ >= SBUS_MAX_POLL_COUNT) {
   u64 counts = read_csr(dd, ASIC_STS_SBUS_COUNTERS);





   if ((reg & ASIC_STS_SBUS_RESULT_DONE_SMASK) &&
       (SBUS_COUNTER(counts, RCV_DATA_VALID) ==
        SBUS_COUNTER(counts, EXECUTE)))
    break;
   return -ETIMEDOUT;
  }
  udelay(1);
  reg = read_csr(dd, ASIC_STS_SBUS_RESULT);
 }
 count = 0;
 write_csr(dd, ASIC_CFG_SBUS_EXECUTE, 0);

 reg = read_csr(dd, ASIC_STS_SBUS_RESULT);
 while (reg & ASIC_STS_SBUS_RESULT_DONE_SMASK) {
  if (count++ >= SBUS_MAX_POLL_COUNT)
   return -ETIME;
  udelay(1);
  reg = read_csr(dd, ASIC_STS_SBUS_RESULT);
 }
 return 0;
}
