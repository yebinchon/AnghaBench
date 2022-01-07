
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct hfi1_devdata {int dummy; } ;


 int ASIC_CFG_SBUS_REQUEST ;
 int ASIC_CFG_SBUS_REQUEST_COMMAND_SHIFT ;
 int ASIC_CFG_SBUS_REQUEST_DATA_ADDR_SHIFT ;
 int ASIC_CFG_SBUS_REQUEST_DATA_IN_SHIFT ;
 int ASIC_CFG_SBUS_REQUEST_RECEIVER_ADDR_SHIFT ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

void sbus_request(struct hfi1_devdata *dd,
    u8 receiver_addr, u8 data_addr, u8 command, u32 data_in)
{
 write_csr(dd, ASIC_CFG_SBUS_REQUEST,
    ((u64)data_in << ASIC_CFG_SBUS_REQUEST_DATA_IN_SHIFT) |
    ((u64)command << ASIC_CFG_SBUS_REQUEST_COMMAND_SHIFT) |
    ((u64)data_addr << ASIC_CFG_SBUS_REQUEST_DATA_ADDR_SHIFT) |
    ((u64)receiver_addr <<
     ASIC_CFG_SBUS_REQUEST_RECEIVER_ADDR_SHIFT));
}
