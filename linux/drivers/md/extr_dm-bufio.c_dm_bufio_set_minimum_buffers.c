
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {unsigned int minimum_buffers; } ;



void dm_bufio_set_minimum_buffers(struct dm_bufio_client *c, unsigned n)
{
 c->minimum_buffers = n;
}
