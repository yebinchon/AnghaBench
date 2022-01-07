
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int QEDR_SQE_ELEMENT_SIZE ;
 int cpu_to_be64 (int ) ;
 int cpu_to_le64 (int ) ;

__attribute__((used)) static void swap_wqe_data64(u64 *p)
{
 int i;

 for (i = 0; i < QEDR_SQE_ELEMENT_SIZE / sizeof(u64); i++, p++)
  *p = cpu_to_be64(cpu_to_le64(*p));
}
