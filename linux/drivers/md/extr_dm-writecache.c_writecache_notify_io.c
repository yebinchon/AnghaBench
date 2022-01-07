
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_notify {int c; int count; int wc; } ;


 int BUG_ON (int) ;
 int EIO ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int complete (int *) ;
 scalar_t__ unlikely (int) ;
 int writecache_error (int ,int ,char*) ;

__attribute__((used)) static void writecache_notify_io(unsigned long error, void *context)
{
 struct io_notify *endio = context;

 if (unlikely(error != 0))
  writecache_error(endio->wc, -EIO, "error writing metadata");
 BUG_ON(atomic_read(&endio->count) <= 0);
 if (atomic_dec_and_test(&endio->count))
  complete(&endio->c);
}
