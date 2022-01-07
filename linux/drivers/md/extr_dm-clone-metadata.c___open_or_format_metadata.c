
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int bm; } ;


 int EPERM ;
 int __format_metadata (struct dm_clone_metadata*) ;
 int __open_metadata (struct dm_clone_metadata*) ;
 int __superblock_all_zeroes (int ,int*) ;

__attribute__((used)) static int __open_or_format_metadata(struct dm_clone_metadata *cmd, bool may_format_device)
{
 int r;
 bool formatted = 0;

 r = __superblock_all_zeroes(cmd->bm, &formatted);
 if (r)
  return r;

 if (!formatted)
  return may_format_device ? __format_metadata(cmd) : -EPERM;

 return __open_metadata(cmd);
}
