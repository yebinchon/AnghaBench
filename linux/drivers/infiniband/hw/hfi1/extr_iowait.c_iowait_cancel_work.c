
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iowait {int dummy; } ;
struct TYPE_4__ {int iowork; } ;
struct TYPE_3__ {int iowork; } ;


 int cancel_work_sync (int *) ;
 TYPE_2__* iowait_get_ib_work (struct iowait*) ;
 TYPE_1__* iowait_get_tid_work (struct iowait*) ;

void iowait_cancel_work(struct iowait *w)
{
 cancel_work_sync(&iowait_get_ib_work(w)->iowork);
 cancel_work_sync(&iowait_get_tid_work(w)->iowork);
}
