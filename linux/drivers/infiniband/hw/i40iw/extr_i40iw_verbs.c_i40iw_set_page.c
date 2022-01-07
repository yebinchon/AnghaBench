
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ib_mr {int dummy; } ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct i40iw_pble_alloc {TYPE_1__ level1; } ;
struct i40iw_pbl {struct i40iw_pble_alloc pble_alloc; } ;
struct i40iw_mr {scalar_t__ npages; scalar_t__ page_cnt; struct i40iw_pbl iwpbl; } ;


 int ENOMEM ;
 int cpu_to_le64 (int ) ;
 struct i40iw_mr* to_iwmr (struct ib_mr*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int i40iw_set_page(struct ib_mr *ibmr, u64 addr)
{
 struct i40iw_mr *iwmr = to_iwmr(ibmr);
 struct i40iw_pbl *iwpbl = &iwmr->iwpbl;
 struct i40iw_pble_alloc *palloc = &iwpbl->pble_alloc;
 u64 *pbl;

 if (unlikely(iwmr->npages == iwmr->page_cnt))
  return -ENOMEM;

 pbl = (u64 *)palloc->level1.addr;
 pbl[iwmr->npages++] = cpu_to_le64(addr);
 return 0;
}
