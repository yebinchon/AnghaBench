
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_firewall {int reloc; int num_relocs; int offset; int cmdbuf; int class; int dev; TYPE_1__* job; } ;
struct TYPE_2__ {scalar_t__ (* is_addr_reg ) (int ,int ,unsigned long) ;} ;


 int EINVAL ;
 int check_reloc (int ,int ,int ) ;
 scalar_t__ stub1 (int ,int ,unsigned long) ;

__attribute__((used)) static int check_register(struct host1x_firewall *fw, unsigned long offset)
{
 if (!fw->job->is_addr_reg)
  return 0;

 if (fw->job->is_addr_reg(fw->dev, fw->class, offset)) {
  if (!fw->num_relocs)
   return -EINVAL;

  if (!check_reloc(fw->reloc, fw->cmdbuf, fw->offset))
   return -EINVAL;

  fw->num_relocs--;
  fw->reloc++;
 }

 return 0;
}
