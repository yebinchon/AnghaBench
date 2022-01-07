
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_perfmon {int dummy; } ;


 int vc4_perfmon_put (struct vc4_perfmon*) ;

__attribute__((used)) static int vc4_perfmon_idr_del(int id, void *elem, void *data)
{
 struct vc4_perfmon *perfmon = elem;

 vc4_perfmon_put(perfmon);

 return 0;
}
