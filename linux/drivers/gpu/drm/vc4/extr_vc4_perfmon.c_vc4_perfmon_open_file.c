
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idr; int lock; } ;
struct vc4_file {TYPE_1__ perfmon; } ;


 int idr_init (int *) ;
 int mutex_init (int *) ;

void vc4_perfmon_open_file(struct vc4_file *vc4file)
{
 mutex_init(&vc4file->perfmon.lock);
 idr_init(&vc4file->perfmon.idr);
}
