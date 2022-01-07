
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_mmu {int as_count; } ;
struct panfrost_device {int dummy; } ;


 int WARN_ON (int) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;

void panfrost_mmu_as_put(struct panfrost_device *pfdev, struct panfrost_mmu *mmu)
{
 atomic_dec(&mmu->as_count);
 WARN_ON(atomic_read(&mmu->as_count) < 0);
}
