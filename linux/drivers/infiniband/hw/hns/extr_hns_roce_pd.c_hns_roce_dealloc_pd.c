
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;
struct TYPE_2__ {int pdn; } ;


 int hns_roce_pd_free (int ,int ) ;
 int to_hr_dev (int ) ;
 TYPE_1__* to_hr_pd (struct ib_pd*) ;

void hns_roce_dealloc_pd(struct ib_pd *pd, struct ib_udata *udata)
{
 hns_roce_pd_free(to_hr_dev(pd->device), to_hr_pd(pd)->pdn);
}
