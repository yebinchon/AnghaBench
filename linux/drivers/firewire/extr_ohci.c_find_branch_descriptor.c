
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct descriptor {int control; } ;
typedef int __le16 ;


 int DESCRIPTOR_BRANCH_ALWAYS ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static struct descriptor *find_branch_descriptor(struct descriptor *d, int z)
{
 __le16 branch;

 branch = d->control & cpu_to_le16(DESCRIPTOR_BRANCH_ALWAYS);


 if (z == 2 && branch == cpu_to_le16(DESCRIPTOR_BRANCH_ALWAYS))
  return d;
 else
  return d + z - 1;
}
