
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subtest {int (* func ) (void*) ;int name; } ;


 int EINTR ;
 int apply_subtest_filter (char const*,int ) ;
 int cond_resched () ;
 int current ;
 int pr_err (char*,char const*,int ,int) ;
 int pr_info (char*,char const*,int ) ;
 scalar_t__ signal_pending (int ) ;
 int stub1 (void*) ;

int
__subtests(const char *caller, const struct subtest *st, int count, void *data)
{
 int err;

 for (; count--; st++) {
  cond_resched();
  if (signal_pending(current))
   return -EINTR;

  if (!apply_subtest_filter(caller, st->name))
   continue;

  pr_info("dma-buf: Running %s/%s\n", caller, st->name);

  err = st->func(data);
  if (err && err != -EINTR) {
   pr_err("dma-buf/%s: %s failed with error %d\n",
          caller, st->name, err);
   return err;
  }
 }

 return 0;
}
