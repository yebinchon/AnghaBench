
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dust_device {int sect_per_block; int quiet_mode; int badblock_count; int badblocklist; } ;
struct badblock {int node; } ;
typedef scalar_t__ sector_t ;


 int DMINFO (char*,unsigned long long) ;
 struct badblock* dust_rb_search (int *,scalar_t__) ;
 int kfree (struct badblock*) ;
 int rb_erase (int *,int *) ;
 int sector_div (scalar_t__,int ) ;

__attribute__((used)) static void __dust_map_write(struct dust_device *dd, sector_t thisblock)
{
 struct badblock *bblk = dust_rb_search(&dd->badblocklist, thisblock);

 if (bblk) {
  rb_erase(&bblk->node, &dd->badblocklist);
  dd->badblock_count--;
  kfree(bblk);
  if (!dd->quiet_mode) {
   sector_div(thisblock, dd->sect_per_block);
   DMINFO("block %llu removed from badblocklist by write",
          (unsigned long long)thisblock);
  }
 }
}
