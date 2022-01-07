
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dm_array_cursor {int cursor; int * ab; int * block; int info; scalar_t__ index; } ;
typedef int __le64 ;


 int DMERR (char*) ;
 int dm_btree_cursor_end (int *) ;
 int dm_btree_cursor_get_value (int *,int *,int *) ;
 int get_ablock (int ,int ,int **,int **) ;
 int le64_to_cpu (int ) ;
 int unlock_ablock (int ,int *) ;

__attribute__((used)) static int load_ablock(struct dm_array_cursor *c)
{
 int r;
 __le64 value_le;
 uint64_t key;

 if (c->block)
  unlock_ablock(c->info, c->block);

 c->block = ((void*)0);
 c->ab = ((void*)0);
 c->index = 0;

 r = dm_btree_cursor_get_value(&c->cursor, &key, &value_le);
 if (r) {
  DMERR("dm_btree_cursor_get_value failed");
  dm_btree_cursor_end(&c->cursor);

 } else {
  r = get_ablock(c->info, le64_to_cpu(value_le), &c->block, &c->ab);
  if (r) {
   DMERR("get_ablock failed");
   dm_btree_cursor_end(&c->cursor);
  }
 }

 return r;
}
