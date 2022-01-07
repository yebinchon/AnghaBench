
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rc_delayed_comp; int * rc_qacks; int * rc_acks; } ;
struct TYPE_4__ {int * pmastats; TYPE_1__ rvp; } ;
struct qib_pportdata {TYPE_2__ ibport_data; } ;


 int free_percpu (int *) ;

__attribute__((used)) static void qib_free_pportdata(struct qib_pportdata *ppd)
{
 free_percpu(ppd->ibport_data.pmastats);
 free_percpu(ppd->ibport_data.rvp.rc_acks);
 free_percpu(ppd->ibport_data.rvp.rc_qacks);
 free_percpu(ppd->ibport_data.rvp.rc_delayed_comp);
 ppd->ibport_data.pmastats = ((void*)0);
}
