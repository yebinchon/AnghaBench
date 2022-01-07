
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct cache_set {int dummy; } ;
struct bkey {int dummy; } ;


 scalar_t__ KEY_DIRTY (struct bkey*) ;
 int KEY_INODE (struct bkey*) ;
 int bcache_dev_sectors_dirty_add (struct cache_set*,int ,int ,int) ;

__attribute__((used)) static void bch_subtract_dirty(struct bkey *k,
      struct cache_set *c,
      uint64_t offset,
      int sectors)
{
 if (KEY_DIRTY(k))
  bcache_dev_sectors_dirty_add(c, KEY_INODE(k),
          offset, -sectors);
}
