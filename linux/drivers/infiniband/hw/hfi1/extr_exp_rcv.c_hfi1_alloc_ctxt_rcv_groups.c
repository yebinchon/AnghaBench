
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tid_group {int size; int base; } ;
struct TYPE_2__ {int group_size; } ;
struct hfi1_devdata {TYPE_1__ rcv_entries; } ;
struct hfi1_ctxtdata {int expected_count; int expected_base; int tid_group_list; struct tid_group* groups; int numa_id; struct hfi1_devdata* dd; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct tid_group* kcalloc_node (int,int,int ,int ) ;
 int tid_group_add_tail (struct tid_group*,int *) ;

int hfi1_alloc_ctxt_rcv_groups(struct hfi1_ctxtdata *rcd)
{
 struct hfi1_devdata *dd = rcd->dd;
 u32 tidbase;
 struct tid_group *grp;
 int i;
 u32 ngroups;

 ngroups = rcd->expected_count / dd->rcv_entries.group_size;
 rcd->groups =
  kcalloc_node(ngroups, sizeof(*rcd->groups),
        GFP_KERNEL, rcd->numa_id);
 if (!rcd->groups)
  return -ENOMEM;
 tidbase = rcd->expected_base;
 for (i = 0; i < ngroups; i++) {
  grp = &rcd->groups[i];
  grp->size = dd->rcv_entries.group_size;
  grp->base = tidbase;
  tid_group_add_tail(grp, &rcd->tid_group_list);
  tidbase += dd->rcv_entries.group_size;
 }

 return 0;
}
