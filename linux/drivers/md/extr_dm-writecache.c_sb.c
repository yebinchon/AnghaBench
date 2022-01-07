
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wc_memory_superblock {int dummy; } ;
struct dm_writecache {struct wc_memory_superblock* memory_map; } ;



__attribute__((used)) static struct wc_memory_superblock *sb(struct dm_writecache *wc)
{
 return wc->memory_map;
}
