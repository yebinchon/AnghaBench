
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int block_size; } ;



unsigned dm_bufio_get_block_size(struct dm_bufio_client *c)
{
 return c->block_size;
}
