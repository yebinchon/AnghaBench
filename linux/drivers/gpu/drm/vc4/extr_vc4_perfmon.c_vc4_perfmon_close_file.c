
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int idr; } ;
struct vc4_file {TYPE_1__ perfmon; } ;


 int idr_destroy (int *) ;
 int idr_for_each (int *,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vc4_perfmon_idr_del ;

void vc4_perfmon_close_file(struct vc4_file *vc4file)
{
 mutex_lock(&vc4file->perfmon.lock);
 idr_for_each(&vc4file->perfmon.idr, vc4_perfmon_idr_del, ((void*)0));
 idr_destroy(&vc4file->perfmon.idr);
 mutex_unlock(&vc4file->perfmon.lock);
}
