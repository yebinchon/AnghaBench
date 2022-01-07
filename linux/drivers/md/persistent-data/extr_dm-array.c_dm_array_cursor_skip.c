
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct dm_array_cursor {scalar_t__ index; TYPE_1__* ab; } ;
struct TYPE_2__ {int nr_entries; } ;


 int dm_array_cursor_next (struct dm_array_cursor*) ;
 scalar_t__ le32_to_cpu (int ) ;

int dm_array_cursor_skip(struct dm_array_cursor *c, uint32_t count)
{
 int r;

 do {
  uint32_t remaining = le32_to_cpu(c->ab->nr_entries) - c->index;

  if (count < remaining) {
   c->index += count;
   return 0;
  }

  count -= remaining;
  r = dm_array_cursor_next(c);

 } while (!r);

 return r;
}
