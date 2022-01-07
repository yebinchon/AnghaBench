
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cache_disk_superblock {int flags; } ;
typedef int (* flags_mutator ) (int ) ;


 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void update_flags(struct cache_disk_superblock *disk_super,
    flags_mutator mutator)
{
 uint32_t sb_flags = mutator(le32_to_cpu(disk_super->flags));
 disk_super->flags = cpu_to_le32(sb_flags);
}
