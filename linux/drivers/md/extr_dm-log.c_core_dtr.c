
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {int clean_bits; } ;
struct dm_dirty_log {scalar_t__ context; } ;


 int destroy_log_context (struct log_c*) ;
 int vfree (int ) ;

__attribute__((used)) static void core_dtr(struct dm_dirty_log *log)
{
 struct log_c *lc = (struct log_c *) log->context;

 vfree(lc->clean_bits);
 destroy_log_context(lc);
}
