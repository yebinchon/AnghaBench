
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {int clean_bits; } ;
struct dm_dirty_log {scalar_t__ context; } ;
typedef int region_t ;


 int log_clear_bit (struct log_c*,int ,int ) ;

__attribute__((used)) static void core_mark_region(struct dm_dirty_log *log, region_t region)
{
 struct log_c *lc = (struct log_c *) log->context;
 log_clear_bit(lc, lc->clean_bits, region);
}
