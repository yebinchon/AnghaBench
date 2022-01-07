
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int pool; } ;
struct noflush_work {int pw; struct thin_c* tc; } ;


 int pool_work_wait (int *,int ,void (*) (struct work_struct*)) ;

__attribute__((used)) static void noflush_work(struct thin_c *tc, void (*fn)(struct work_struct *))
{
 struct noflush_work w;

 w.tc = tc;
 pool_work_wait(&w.pw, tc->pool, fn);
}
