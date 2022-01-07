
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct cached_dev {int writeback_rate; int writeback_percent; TYPE_1__ disk; } ;


 int BCACHE_DEV_DETACHING ;
 unsigned int bch_next_delay (int *,unsigned int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static unsigned int writeback_delay(struct cached_dev *dc,
        unsigned int sectors)
{
 if (test_bit(BCACHE_DEV_DETACHING, &dc->disk.flags) ||
     !dc->writeback_percent)
  return 0;

 return bch_next_delay(&dc->writeback_rate, sectors);
}
