
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {int endio_list_lock; int endio_list; int endio_thread; } ;
struct copy_struct {int endio_entry; int error; struct dm_writecache* wc; } ;


 int EIO ;
 scalar_t__ likely (int) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int ) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void writecache_copy_endio(int read_err, unsigned long write_err, void *ptr)
{
 struct copy_struct *c = ptr;
 struct dm_writecache *wc = c->wc;

 c->error = likely(!(read_err | write_err)) ? 0 : -EIO;

 raw_spin_lock_irq(&wc->endio_list_lock);
 if (unlikely(list_empty(&wc->endio_list)))
  wake_up_process(wc->endio_thread);
 list_add_tail(&c->endio_entry, &wc->endio_list);
 raw_spin_unlock_irq(&wc->endio_list_lock);
}
