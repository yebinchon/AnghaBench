
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_array_cursor {int cursor; scalar_t__ block; int info; } ;


 int dm_btree_cursor_end (int *) ;
 int unlock_ablock (int ,scalar_t__) ;

void dm_array_cursor_end(struct dm_array_cursor *c)
{
 if (c->block) {
  unlock_ablock(c->info, c->block);
  dm_btree_cursor_end(&c->cursor);
 }
}
