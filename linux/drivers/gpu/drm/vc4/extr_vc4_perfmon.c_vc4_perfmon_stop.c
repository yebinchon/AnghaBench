
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_perfmon {unsigned int ncounters; int * counters; } ;
struct vc4_dev {struct vc4_perfmon* active_perfmon; } ;


 int V3D_PCTR (unsigned int) ;
 int V3D_PCTRE ;
 scalar_t__ V3D_READ (int ) ;
 int V3D_WRITE (int ,int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;

void vc4_perfmon_stop(struct vc4_dev *vc4, struct vc4_perfmon *perfmon,
        bool capture)
{
 unsigned int i;

 if (WARN_ON_ONCE(!vc4->active_perfmon ||
    perfmon != vc4->active_perfmon))
  return;

 if (capture) {
  for (i = 0; i < perfmon->ncounters; i++)
   perfmon->counters[i] += V3D_READ(V3D_PCTR(i));
 }

 V3D_WRITE(V3D_PCTRE, 0);
 vc4->active_perfmon = ((void*)0);
}
