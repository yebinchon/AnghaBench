
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_selftest {int (* func ) (void*) ;int name; int enabled; } ;


 int ENOTTY ;
 scalar_t__ WARN (int,char*,int ,int) ;
 int pr_debug (char*,int ) ;
 int rcu_barrier () ;
 int set_default_test_all (struct drm_selftest*,unsigned long) ;
 int stub1 (void*) ;

__attribute__((used)) static int run_selftests(struct drm_selftest *st,
    unsigned long count,
    void *data)
{
 int err = 0;

 set_default_test_all(st, count);


 for (; count--; st++) {
  if (!st->enabled)
   continue;

  pr_debug("drm: Running %s\n", st->name);
  err = st->func(data);
  if (err)
   break;
 }

 if (WARN(err > 0 || err == -ENOTTY,
   "%s returned %d, conflicting with selftest's magic values!\n",
   st->name, err))
  err = -1;

 rcu_barrier();
 return err;
}
