
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_array_info {int btree_info; } ;
struct dm_array_cursor {int cursor; struct dm_array_info* info; } ;
typedef int dm_block_t ;


 int DMERR (char*) ;
 int dm_btree_cursor_begin (int *,int ,int,int *) ;
 int load_ablock (struct dm_array_cursor*) ;
 int memset (struct dm_array_cursor*,int ,int) ;

int dm_array_cursor_begin(struct dm_array_info *info, dm_block_t root,
     struct dm_array_cursor *c)
{
 int r;

 memset(c, 0, sizeof(*c));
 c->info = info;
 r = dm_btree_cursor_begin(&info->btree_info, root, 1, &c->cursor);
 if (r) {
  DMERR("couldn't create btree cursor");
  return r;
 }

 return load_ablock(c);
}
