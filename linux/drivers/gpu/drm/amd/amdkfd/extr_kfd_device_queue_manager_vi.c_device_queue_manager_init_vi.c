
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_queue_manager_asic_ops {int mqd_manager_init; int init_sdma_vm; int update_qpd; int set_cache_memory_policy; } ;


 int init_sdma_vm ;
 int mqd_manager_init_vi ;
 int set_cache_memory_policy_vi ;
 int update_qpd_vi ;

void device_queue_manager_init_vi(
  struct device_queue_manager_asic_ops *asic_ops)
{
 asic_ops->set_cache_memory_policy = set_cache_memory_policy_vi;
 asic_ops->update_qpd = update_qpd_vi;
 asic_ops->init_sdma_vm = init_sdma_vm;
 asic_ops->mqd_manager_init = mqd_manager_init_vi;
}
