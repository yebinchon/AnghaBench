
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_queue_manager_asic_ops {int mqd_manager_init; int init_sdma_vm; int update_qpd; int set_cache_memory_policy; } ;


 int init_sdma_vm_hawaii ;
 int mqd_manager_init_cik_hawaii ;
 int set_cache_memory_policy_cik ;
 int update_qpd_cik_hawaii ;

void device_queue_manager_init_cik_hawaii(
  struct device_queue_manager_asic_ops *asic_ops)
{
 asic_ops->set_cache_memory_policy = set_cache_memory_policy_cik;
 asic_ops->update_qpd = update_qpd_cik_hawaii;
 asic_ops->init_sdma_vm = init_sdma_vm_hawaii;
 asic_ops->mqd_manager_init = mqd_manager_init_cik_hawaii;
}
