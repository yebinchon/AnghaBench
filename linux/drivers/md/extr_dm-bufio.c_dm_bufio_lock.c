
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int lock; } ;


 int dm_bufio_in_request () ;
 int mutex_lock_nested (int *,int ) ;

__attribute__((used)) static void dm_bufio_lock(struct dm_bufio_client *c)
{
 mutex_lock_nested(&c->lock, dm_bufio_in_request());
}
