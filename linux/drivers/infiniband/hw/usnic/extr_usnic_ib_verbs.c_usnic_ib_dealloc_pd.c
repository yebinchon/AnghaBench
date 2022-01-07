
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_udata {int dummy; } ;
struct ib_pd {int dummy; } ;
struct TYPE_2__ {int umem_pd; } ;


 TYPE_1__* to_upd (struct ib_pd*) ;
 int usnic_uiom_dealloc_pd (int ) ;

void usnic_ib_dealloc_pd(struct ib_pd *pd, struct ib_udata *udata)
{
 usnic_uiom_dealloc_pd((to_upd(pd))->umem_pd);
}
