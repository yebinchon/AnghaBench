
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_array_cursor {scalar_t__ index; int cursor; TYPE_1__* ab; int block; } ;
struct TYPE_2__ {int nr_entries; } ;


 int ENODATA ;
 int dm_btree_cursor_next (int *) ;
 scalar_t__ le32_to_cpu (int ) ;
 int load_ablock (struct dm_array_cursor*) ;

int dm_array_cursor_next(struct dm_array_cursor *c)
{
 int r;

 if (!c->block)
  return -ENODATA;

 c->index++;

 if (c->index >= le32_to_cpu(c->ab->nr_entries)) {
  r = dm_btree_cursor_next(&c->cursor);
  if (r)
   return r;

  r = load_ablock(c);
  if (r)
   return r;
 }

 return 0;
}
