
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct panfrost_device {int dummy; } ;


 int AS_COMMAND (int ) ;
 int mmu_write (struct panfrost_device*,int ,int ) ;
 int wait_ready (struct panfrost_device*,int ) ;

__attribute__((used)) static int write_cmd(struct panfrost_device *pfdev, u32 as_nr, u32 cmd)
{
 int status;


 status = wait_ready(pfdev, as_nr);
 if (!status)
  mmu_write(pfdev, AS_COMMAND(as_nr), cmd);

 return status;
}
