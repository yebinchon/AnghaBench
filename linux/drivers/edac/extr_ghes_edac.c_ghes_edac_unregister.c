
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_ctl_info {int pdev; } ;
struct ghes {int dummy; } ;
struct TYPE_2__ {struct mem_ctl_info* mci; } ;


 scalar_t__ atomic_dec_return (int *) ;
 int edac_mc_del_mc (int ) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 int ghes_init ;
 TYPE_1__* ghes_pvt ;

void ghes_edac_unregister(struct ghes *ghes)
{
 struct mem_ctl_info *mci;

 if (!ghes_pvt)
  return;

 if (atomic_dec_return(&ghes_init))
  return;

 mci = ghes_pvt->mci;
 ghes_pvt = ((void*)0);
 edac_mc_del_mc(mci->pdev);
 edac_mc_free(mci);
}
