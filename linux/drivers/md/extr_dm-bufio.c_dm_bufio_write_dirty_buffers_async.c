
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int dummy; } ;


 int BUG_ON (int ) ;
 int LIST_HEAD (int ) ;
 int __flush_write_list (int *) ;
 int __write_dirty_buffers_async (struct dm_bufio_client*,int ,int *) ;
 int dm_bufio_in_request () ;
 int dm_bufio_lock (struct dm_bufio_client*) ;
 int dm_bufio_unlock (struct dm_bufio_client*) ;
 int write_list ;

void dm_bufio_write_dirty_buffers_async(struct dm_bufio_client *c)
{
 LIST_HEAD(write_list);

 BUG_ON(dm_bufio_in_request());

 dm_bufio_lock(c);
 __write_dirty_buffers_async(c, 0, &write_list);
 dm_bufio_unlock(c);
 __flush_write_list(&write_list);
}
