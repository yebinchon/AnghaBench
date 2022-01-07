
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_device {int dummy; } ;


 int MMU_INT_MASK ;
 int mmu_write (struct panfrost_device*,int ,int ) ;

void panfrost_mmu_fini(struct panfrost_device *pfdev)
{
 mmu_write(pfdev, MMU_INT_MASK, 0);
}
