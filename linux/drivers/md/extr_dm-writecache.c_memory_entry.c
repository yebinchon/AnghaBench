
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wc_memory_entry {int dummy; } ;
struct wc_entry {size_t index; } ;
struct dm_writecache {int dummy; } ;
struct TYPE_2__ {struct wc_memory_entry* entries; } ;


 TYPE_1__* sb (struct dm_writecache*) ;

__attribute__((used)) static struct wc_memory_entry *memory_entry(struct dm_writecache *wc, struct wc_entry *e)
{
 return &sb(wc)->entries[e->index];
}
