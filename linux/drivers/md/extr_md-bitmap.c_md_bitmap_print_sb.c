
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sb_page; } ;
struct bitmap {TYPE_1__ storage; } ;
struct TYPE_6__ {int write_behind; int sync_size; int daemon_sleep; int chunksize; int state; int events_cleared; int events; scalar_t__ uuid; int version; int magic; } ;
typedef TYPE_2__ bitmap_super_t ;
typedef int __le32 ;


 unsigned long long bmname (struct bitmap*) ;
 TYPE_2__* kmap_atomic (int ) ;
 int kunmap_atomic (TYPE_2__*) ;
 unsigned long long le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int pr_debug (char*,unsigned long long,...) ;

void md_bitmap_print_sb(struct bitmap *bitmap)
{
 bitmap_super_t *sb;

 if (!bitmap || !bitmap->storage.sb_page)
  return;
 sb = kmap_atomic(bitmap->storage.sb_page);
 pr_debug("%s: bitmap file superblock:\n", bmname(bitmap));
 pr_debug("         magic: %08x\n", le32_to_cpu(sb->magic));
 pr_debug("       version: %d\n", le32_to_cpu(sb->version));
 pr_debug("          uuid: %08x.%08x.%08x.%08x\n",
   le32_to_cpu(*(__le32 *)(sb->uuid+0)),
   le32_to_cpu(*(__le32 *)(sb->uuid+4)),
   le32_to_cpu(*(__le32 *)(sb->uuid+8)),
   le32_to_cpu(*(__le32 *)(sb->uuid+12)));
 pr_debug("        events: %llu\n",
   (unsigned long long) le64_to_cpu(sb->events));
 pr_debug("events cleared: %llu\n",
   (unsigned long long) le64_to_cpu(sb->events_cleared));
 pr_debug("         state: %08x\n", le32_to_cpu(sb->state));
 pr_debug("     chunksize: %d B\n", le32_to_cpu(sb->chunksize));
 pr_debug("  daemon sleep: %ds\n", le32_to_cpu(sb->daemon_sleep));
 pr_debug("     sync size: %llu KB\n",
   (unsigned long long)le64_to_cpu(sb->sync_size)/2);
 pr_debug("max write behind: %d\n", le32_to_cpu(sb->write_behind));
 kunmap_atomic(sb);
}
