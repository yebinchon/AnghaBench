
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int * lru; int * n_buffers; } ;
struct dm_buffer {int list_mode; int last_accessed; struct dm_bufio_client* c; int lru_list; int block; } ;
typedef int sector_t ;


 int __insert (struct dm_bufio_client*,struct dm_buffer*) ;
 int adjust_total_allocated (struct dm_buffer*,int) ;
 int jiffies ;
 int list_add (int *,int *) ;

__attribute__((used)) static void __link_buffer(struct dm_buffer *b, sector_t block, int dirty)
{
 struct dm_bufio_client *c = b->c;

 c->n_buffers[dirty]++;
 b->block = block;
 b->list_mode = dirty;
 list_add(&b->lru_list, &c->lru[dirty]);
 __insert(b->c, b);
 b->last_accessed = jiffies;

 adjust_total_allocated(b, 0);
}
