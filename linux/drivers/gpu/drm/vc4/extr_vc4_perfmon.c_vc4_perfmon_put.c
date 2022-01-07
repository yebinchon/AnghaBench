
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_perfmon {int refcnt; } ;


 int kfree (struct vc4_perfmon*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void vc4_perfmon_put(struct vc4_perfmon *perfmon)
{
 if (perfmon && refcount_dec_and_test(&perfmon->refcnt))
  kfree(perfmon);
}
