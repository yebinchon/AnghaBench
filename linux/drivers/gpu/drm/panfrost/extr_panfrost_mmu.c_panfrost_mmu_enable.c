
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int transtab; int memattr; } ;
struct io_pgtable_cfg {TYPE_1__ arm_mali_lpae_cfg; } ;
struct panfrost_mmu {int as; struct io_pgtable_cfg pgtbl_cfg; } ;
struct panfrost_device {int dummy; } ;


 int AS_COMMAND_FLUSH_MEM ;
 int AS_COMMAND_UPDATE ;
 int AS_MEMATTR_HI (int) ;
 int AS_MEMATTR_LO (int) ;
 int AS_TRANSTAB_HI (int) ;
 int AS_TRANSTAB_LO (int) ;
 int mmu_hw_do_operation_locked (struct panfrost_device*,int,int ,unsigned long,int ) ;
 int mmu_write (struct panfrost_device*,int ,int) ;
 int write_cmd (struct panfrost_device*,int,int ) ;

__attribute__((used)) static void panfrost_mmu_enable(struct panfrost_device *pfdev, struct panfrost_mmu *mmu)
{
 int as_nr = mmu->as;
 struct io_pgtable_cfg *cfg = &mmu->pgtbl_cfg;
 u64 transtab = cfg->arm_mali_lpae_cfg.transtab;
 u64 memattr = cfg->arm_mali_lpae_cfg.memattr;

 mmu_hw_do_operation_locked(pfdev, as_nr, 0, ~0UL, AS_COMMAND_FLUSH_MEM);

 mmu_write(pfdev, AS_TRANSTAB_LO(as_nr), transtab & 0xffffffffUL);
 mmu_write(pfdev, AS_TRANSTAB_HI(as_nr), transtab >> 32);




 mmu_write(pfdev, AS_MEMATTR_LO(as_nr), memattr & 0xffffffffUL);
 mmu_write(pfdev, AS_MEMATTR_HI(as_nr), memattr >> 32);

 write_cmd(pfdev, as_nr, AS_COMMAND_UPDATE);
}
