
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct panfrost_device {int dummy; } ;


 int AS_COMMAND_LOCK ;
 int AS_LOCKADDR_HI (int ) ;
 int AS_LOCKADDR_LO (int ) ;
 int PAGE_MASK ;
 size_t PAGE_SHIFT ;
 int PAGE_SIZE ;
 int fls (size_t) ;
 int mmu_write (struct panfrost_device*,int ,int) ;
 size_t round_up (size_t,int ) ;
 int write_cmd (struct panfrost_device*,int ,int ) ;

__attribute__((used)) static void lock_region(struct panfrost_device *pfdev, u32 as_nr,
   u64 iova, size_t size)
{
 u8 region_width;
 u64 region = iova & PAGE_MASK;
 size = round_up(size, PAGE_SIZE);

 region_width = 10 + fls(size >> PAGE_SHIFT);
 if ((size >> PAGE_SHIFT) != (1ul << (region_width - 11))) {

  region_width += 1;
 }
 region |= region_width;


 mmu_write(pfdev, AS_LOCKADDR_LO(as_nr), region & 0xFFFFFFFFUL);
 mmu_write(pfdev, AS_LOCKADDR_HI(as_nr), (region >> 32) & 0xFFFFFFFFUL);
 write_cmd(pfdev, as_nr, AS_COMMAND_LOCK);
}
