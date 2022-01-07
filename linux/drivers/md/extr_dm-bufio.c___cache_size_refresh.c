
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 scalar_t__ READ_ONCE (int ) ;
 int cmpxchg (int *,int ,scalar_t__) ;
 int dm_bufio_cache_size ;
 scalar_t__ dm_bufio_cache_size_latch ;
 scalar_t__ dm_bufio_client_count ;
 int dm_bufio_clients_lock ;
 scalar_t__ dm_bufio_default_cache_size ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void __cache_size_refresh(void)
{
 BUG_ON(!mutex_is_locked(&dm_bufio_clients_lock));
 BUG_ON(dm_bufio_client_count < 0);

 dm_bufio_cache_size_latch = READ_ONCE(dm_bufio_cache_size);




 if (!dm_bufio_cache_size_latch) {
  (void)cmpxchg(&dm_bufio_cache_size, 0,
         dm_bufio_default_cache_size);
  dm_bufio_cache_size_latch = dm_bufio_default_cache_size;
 }
}
