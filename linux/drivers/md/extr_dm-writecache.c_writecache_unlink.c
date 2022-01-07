
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wc_entry {int rb_node; int lru; } ;
struct dm_writecache {int tree; } ;


 int list_del (int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void writecache_unlink(struct dm_writecache *wc, struct wc_entry *e)
{
 list_del(&e->lru);
 rb_erase(&e->rb_node, &wc->tree);
}
