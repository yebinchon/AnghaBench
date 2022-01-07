
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int dummy; } ;
struct dm_buffer {struct dm_bufio_client* c; } ;



struct dm_bufio_client *dm_bufio_get_client(struct dm_buffer *b)
{
 return b->c;
}
