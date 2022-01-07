
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_pgtable {int dummy; } ;
struct arm_lpae_io_pgtable {int pgd; } ;


 int ARM_LPAE_START_LVL (struct arm_lpae_io_pgtable*) ;
 int __arm_lpae_free_pgtable (struct arm_lpae_io_pgtable*,int ,int ) ;
 struct arm_lpae_io_pgtable* io_pgtable_to_data (struct io_pgtable*) ;
 int kfree (struct arm_lpae_io_pgtable*) ;

__attribute__((used)) static void arm_lpae_free_pgtable(struct io_pgtable *iop)
{
 struct arm_lpae_io_pgtable *data = io_pgtable_to_data(iop);

 __arm_lpae_free_pgtable(data, ARM_LPAE_START_LVL(data), data->pgd);
 kfree(data);
}
