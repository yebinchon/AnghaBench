
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_queue_manager_asic_ops {int mqd_manager_init; int init_sdma_vm; int update_qpd; } ;


 int init_sdma_vm_v10 ;
 int mqd_manager_init_v10 ;
 int update_qpd_v10 ;

void device_queue_manager_init_v10_navi10(
 struct device_queue_manager_asic_ops *asic_ops)
{
 asic_ops->update_qpd = update_qpd_v10;
 asic_ops->init_sdma_vm = init_sdma_vm_v10;
 asic_ops->mqd_manager_init = mqd_manager_init_v10;
}
