
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dev {int sram_ecc_flag; } ;


 int atomic_inc (int *) ;

void kgd2kfd_set_sram_ecc_flag(struct kfd_dev *kfd)
{
 if (kfd)
  atomic_inc(&kfd->sram_ecc_flag);
}
