
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {int sync_bits; } ;
struct dm_dirty_log {scalar_t__ context; } ;
typedef int region_t ;


 int log_test_bit (int ,int ) ;

__attribute__((used)) static int core_in_sync(struct dm_dirty_log *log, region_t region, int block)
{
 struct log_c *lc = (struct log_c *) log->context;
 return log_test_bit(lc->sync_bits, region);
}
