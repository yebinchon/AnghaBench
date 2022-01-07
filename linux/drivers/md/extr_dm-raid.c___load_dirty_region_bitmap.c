
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid_set {int md; int runtime_flags; } ;


 int DMERR (char*) ;
 int RT_FLAG_RS_BITMAP_LOADED ;
 int md_bitmap_load (int *) ;
 int rs_is_raid0 (struct raid_set*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int __load_dirty_region_bitmap(struct raid_set *rs)
{
 int r = 0;


 if (!rs_is_raid0(rs) &&
     !test_and_set_bit(RT_FLAG_RS_BITMAP_LOADED, &rs->runtime_flags)) {
  r = md_bitmap_load(&rs->md);
  if (r)
   DMERR("Failed to load bitmap");
 }

 return r;
}
