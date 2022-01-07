
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_perfmon {int refcnt; } ;


 int refcount_inc (int *) ;

void vc4_perfmon_get(struct vc4_perfmon *perfmon)
{
 if (perfmon)
  refcount_inc(&perfmon->refcnt);
}
