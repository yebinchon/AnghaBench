
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cl; int flags; } ;
struct cached_dev {TYPE_1__ disk; } ;


 int BCACHE_DEV_CLOSING ;
 int BCACHE_DEV_DETACHING ;
 int bch_register_lock ;
 int bch_writeback_queue (struct cached_dev*) ;
 int cached_dev_put (struct cached_dev*) ;
 int closure_get (int *) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void bch_cached_dev_detach(struct cached_dev *dc)
{
 lockdep_assert_held(&bch_register_lock);

 if (test_bit(BCACHE_DEV_CLOSING, &dc->disk.flags))
  return;

 if (test_and_set_bit(BCACHE_DEV_DETACHING, &dc->disk.flags))
  return;





 closure_get(&dc->disk.cl);

 bch_writeback_queue(dc);

 cached_dev_put(dc);
}
