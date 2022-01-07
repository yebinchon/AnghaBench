
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vc4_perfmon {unsigned int ncounters; int* events; } ;
struct vc4_dev {struct vc4_perfmon* active_perfmon; } ;


 int GENMASK (int,int ) ;
 int V3D_PCTRC ;
 int V3D_PCTRE ;
 int V3D_PCTRE_EN ;
 int V3D_PCTRS (unsigned int) ;
 int V3D_WRITE (int ,int) ;
 scalar_t__ WARN_ON_ONCE (int ) ;

void vc4_perfmon_start(struct vc4_dev *vc4, struct vc4_perfmon *perfmon)
{
 unsigned int i;
 u32 mask;

 if (WARN_ON_ONCE(!perfmon || vc4->active_perfmon))
  return;

 for (i = 0; i < perfmon->ncounters; i++)
  V3D_WRITE(V3D_PCTRS(i), perfmon->events[i]);

 mask = GENMASK(perfmon->ncounters - 1, 0);
 V3D_WRITE(V3D_PCTRC, mask);
 V3D_WRITE(V3D_PCTRE, V3D_PCTRE_EN | mask);
 vc4->active_perfmon = perfmon;
}
