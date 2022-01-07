
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int start; } ;
typedef int sector_t ;



void dm_bufio_set_sector_offset(struct dm_bufio_client *c, sector_t start)
{
 c->start = start;
}
