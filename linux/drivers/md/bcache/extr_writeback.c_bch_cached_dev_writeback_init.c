
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int rate; } ;
struct cached_dev {int writeback_metadata; int writeback_running; int writeback_percent; int writeback_delay; int writeback_rate_minimum; int writeback_rate_p_term_inverse; int writeback_rate_i_term_inverse; int writeback_rate_update; TYPE_2__ disk; int writeback_rate_update_seconds; TYPE_1__ writeback_rate; int writeback_keys; int writeback_lock; int in_flight; } ;


 int BCACHE_DEV_WB_RUNNING ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int WARN_ON (int ) ;
 int WRITEBACK_RATE_UPDATE_SECS_DEFAULT ;
 int atomic_long_set (int *,int) ;
 int bch_keybuf_init (int *) ;
 int init_rwsem (int *) ;
 int sema_init (int *,int) ;
 int test_and_clear_bit (int ,int *) ;
 int update_writeback_rate ;

void bch_cached_dev_writeback_init(struct cached_dev *dc)
{
 sema_init(&dc->in_flight, 64);
 init_rwsem(&dc->writeback_lock);
 bch_keybuf_init(&dc->writeback_keys);

 dc->writeback_metadata = 1;
 dc->writeback_running = 0;
 dc->writeback_percent = 10;
 dc->writeback_delay = 30;
 atomic_long_set(&dc->writeback_rate.rate, 1024);
 dc->writeback_rate_minimum = 8;

 dc->writeback_rate_update_seconds = WRITEBACK_RATE_UPDATE_SECS_DEFAULT;
 dc->writeback_rate_p_term_inverse = 40;
 dc->writeback_rate_i_term_inverse = 10000;

 WARN_ON(test_and_clear_bit(BCACHE_DEV_WB_RUNNING, &dc->disk.flags));
 INIT_DELAYED_WORK(&dc->writeback_rate_update, update_writeback_rate);
}
