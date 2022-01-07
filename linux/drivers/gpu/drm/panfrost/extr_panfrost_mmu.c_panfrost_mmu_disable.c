
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct panfrost_device {int dummy; } ;


 int AS_COMMAND_FLUSH_MEM ;
 int AS_COMMAND_UPDATE ;
 int AS_MEMATTR_HI (int ) ;
 int AS_MEMATTR_LO (int ) ;
 int AS_TRANSTAB_HI (int ) ;
 int AS_TRANSTAB_LO (int ) ;
 int mmu_hw_do_operation_locked (struct panfrost_device*,int ,int ,unsigned long,int ) ;
 int mmu_write (struct panfrost_device*,int ,int ) ;
 int write_cmd (struct panfrost_device*,int ,int ) ;

__attribute__((used)) static void panfrost_mmu_disable(struct panfrost_device *pfdev, u32 as_nr)
{
 mmu_hw_do_operation_locked(pfdev, as_nr, 0, ~0UL, AS_COMMAND_FLUSH_MEM);

 mmu_write(pfdev, AS_TRANSTAB_LO(as_nr), 0);
 mmu_write(pfdev, AS_TRANSTAB_HI(as_nr), 0);

 mmu_write(pfdev, AS_MEMATTR_LO(as_nr), 0);
 mmu_write(pfdev, AS_MEMATTR_HI(as_nr), 0);

 write_cmd(pfdev, as_nr, AS_COMMAND_UPDATE);
}
