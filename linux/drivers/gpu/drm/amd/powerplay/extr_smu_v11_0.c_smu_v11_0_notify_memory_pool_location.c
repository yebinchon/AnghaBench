
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t uint64_t ;
typedef scalar_t__ uint32_t ;
struct smu_table {scalar_t__ size; uintptr_t mc_address; int * cpu_addr; } ;
struct smu_table_context {struct smu_table memory_pool; } ;
struct smu_context {struct smu_table_context smu_table; } ;


 int SMU_MSG_DramLogSetDramAddrHigh ;
 int SMU_MSG_DramLogSetDramAddrLow ;
 int SMU_MSG_DramLogSetDramSize ;
 int SMU_MSG_SetSystemVirtualDramAddrHigh ;
 int SMU_MSG_SetSystemVirtualDramAddrLow ;
 scalar_t__ lower_32_bits (uintptr_t) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,scalar_t__) ;
 scalar_t__ upper_32_bits (uintptr_t) ;

__attribute__((used)) static int smu_v11_0_notify_memory_pool_location(struct smu_context *smu)
{
 struct smu_table_context *smu_table = &smu->smu_table;
 struct smu_table *memory_pool = &smu_table->memory_pool;
 int ret = 0;
 uint64_t address;
 uint32_t address_low, address_high;

 if (memory_pool->size == 0 || memory_pool->cpu_addr == ((void*)0))
  return ret;

 address = (uintptr_t)memory_pool->cpu_addr;
 address_high = (uint32_t)upper_32_bits(address);
 address_low = (uint32_t)lower_32_bits(address);

 ret = smu_send_smc_msg_with_param(smu,
       SMU_MSG_SetSystemVirtualDramAddrHigh,
       address_high);
 if (ret)
  return ret;
 ret = smu_send_smc_msg_with_param(smu,
       SMU_MSG_SetSystemVirtualDramAddrLow,
       address_low);
 if (ret)
  return ret;

 address = memory_pool->mc_address;
 address_high = (uint32_t)upper_32_bits(address);
 address_low = (uint32_t)lower_32_bits(address);

 ret = smu_send_smc_msg_with_param(smu, SMU_MSG_DramLogSetDramAddrHigh,
       address_high);
 if (ret)
  return ret;
 ret = smu_send_smc_msg_with_param(smu, SMU_MSG_DramLogSetDramAddrLow,
       address_low);
 if (ret)
  return ret;
 ret = smu_send_smc_msg_with_param(smu, SMU_MSG_DramLogSetDramSize,
       (uint32_t)memory_pool->size);
 if (ret)
  return ret;

 return ret;
}
