
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_perfmon {int dummy; } ;
struct TYPE_2__ {int lock; int idr; } ;
struct vc4_file {TYPE_1__ perfmon; } ;


 struct vc4_perfmon* idr_find (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vc4_perfmon_get (struct vc4_perfmon*) ;

struct vc4_perfmon *vc4_perfmon_find(struct vc4_file *vc4file, int id)
{
 struct vc4_perfmon *perfmon;

 mutex_lock(&vc4file->perfmon.lock);
 perfmon = idr_find(&vc4file->perfmon.idr, id);
 vc4_perfmon_get(perfmon);
 mutex_unlock(&vc4file->perfmon.lock);

 return perfmon;
}
