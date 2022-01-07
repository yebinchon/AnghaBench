
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct panfrost_device {int dummy; } ;


 scalar_t__ AS_COMMAND_UNLOCK ;
 int lock_region (struct panfrost_device*,int,int ,size_t) ;
 int wait_ready (struct panfrost_device*,int) ;
 int write_cmd (struct panfrost_device*,int,scalar_t__) ;

__attribute__((used)) static int mmu_hw_do_operation_locked(struct panfrost_device *pfdev, int as_nr,
          u64 iova, size_t size, u32 op)
{
 if (as_nr < 0)
  return 0;

 if (op != AS_COMMAND_UNLOCK)
  lock_region(pfdev, as_nr, iova, size);


 write_cmd(pfdev, as_nr, op);


 return wait_ready(pfdev, as_nr);
}
