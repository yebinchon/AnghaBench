
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int lock; } ;


 int mutex_trylock (int *) ;

__attribute__((used)) static int dm_bufio_trylock(struct dm_bufio_client *c)
{
 return mutex_trylock(&c->lock);
}
