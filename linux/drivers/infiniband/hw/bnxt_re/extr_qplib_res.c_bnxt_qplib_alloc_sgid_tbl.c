
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct bnxt_qplib_sgid_tbl {int * tbl; int * hw_id; int * ctx; int max; void* vlan; } ;
struct bnxt_qplib_res {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* kcalloc (int ,int,int ) ;
 int kfree (int *) ;

__attribute__((used)) static int bnxt_qplib_alloc_sgid_tbl(struct bnxt_qplib_res *res,
         struct bnxt_qplib_sgid_tbl *sgid_tbl,
         u16 max)
{
 sgid_tbl->tbl = kcalloc(max, sizeof(*sgid_tbl->tbl), GFP_KERNEL);
 if (!sgid_tbl->tbl)
  return -ENOMEM;

 sgid_tbl->hw_id = kcalloc(max, sizeof(u16), GFP_KERNEL);
 if (!sgid_tbl->hw_id)
  goto out_free1;

 sgid_tbl->ctx = kcalloc(max, sizeof(void *), GFP_KERNEL);
 if (!sgid_tbl->ctx)
  goto out_free2;

 sgid_tbl->vlan = kcalloc(max, sizeof(u8), GFP_KERNEL);
 if (!sgid_tbl->vlan)
  goto out_free3;

 sgid_tbl->max = max;
 return 0;
out_free3:
 kfree(sgid_tbl->ctx);
 sgid_tbl->ctx = ((void*)0);
out_free2:
 kfree(sgid_tbl->hw_id);
 sgid_tbl->hw_id = ((void*)0);
out_free1:
 kfree(sgid_tbl->tbl);
 sgid_tbl->tbl = ((void*)0);
 return -ENOMEM;
}
