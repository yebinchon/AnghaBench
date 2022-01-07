
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int * lru; int * n_buffers; } ;
struct dm_buffer {int accessed; size_t list_mode; int last_accessed; int lru_list; struct dm_bufio_client* c; } ;


 int BUG_ON (int) ;
 int jiffies ;
 int list_move (int *,int *) ;

__attribute__((used)) static void __relink_lru(struct dm_buffer *b, int dirty)
{
 struct dm_bufio_client *c = b->c;

 b->accessed = 1;

 BUG_ON(!c->n_buffers[b->list_mode]);

 c->n_buffers[b->list_mode]--;
 c->n_buffers[dirty]++;
 b->list_mode = dirty;
 list_move(&b->lru_list, &c->lru[dirty]);
 b->last_accessed = jiffies;
}
