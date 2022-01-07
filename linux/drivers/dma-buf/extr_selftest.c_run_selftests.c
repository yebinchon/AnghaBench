
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selftest {int (* func ) () ;int name; int enabled; } ;


 int ENOTTY ;
 scalar_t__ WARN (int,char*,int ,int) ;
 int pr_info (char*,int ) ;
 int set_default_test_all (struct selftest*,unsigned long) ;
 int stub1 () ;

__attribute__((used)) static int run_selftests(struct selftest *st, unsigned long count)
{
 int err = 0;

 set_default_test_all(st, count);


 for (; count--; st++) {
  if (!st->enabled)
   continue;

  pr_info("dma-buf: Running %s\n", st->name);
  err = st->func();
  if (err)
   break;
 }

 if (WARN(err > 0 || err == -ENOTTY,
   "%s returned %d, conflicting with selftest's magic values!\n",
   st->name, err))
  err = -1;

 return err;
}
