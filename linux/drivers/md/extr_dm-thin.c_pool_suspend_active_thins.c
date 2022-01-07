
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int thin_md; } ;
struct pool {int dummy; } ;


 int dm_internal_suspend_noflush (int ) ;
 struct thin_c* get_first_thin (struct pool*) ;
 struct thin_c* get_next_thin (struct pool*,struct thin_c*) ;

__attribute__((used)) static void pool_suspend_active_thins(struct pool *pool)
{
 struct thin_c *tc;


 tc = get_first_thin(pool);
 while (tc) {
  dm_internal_suspend_noflush(tc->thin_md);
  tc = get_next_thin(pool, tc);
 }
}
