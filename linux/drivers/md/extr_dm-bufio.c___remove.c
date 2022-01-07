
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int buffer_tree; } ;
struct dm_buffer {int node; } ;


 int rb_erase (int *,int *) ;

__attribute__((used)) static void __remove(struct dm_bufio_client *c, struct dm_buffer *b)
{
 rb_erase(&b->node, &c->buffer_tree);
}
