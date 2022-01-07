
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_mr {int dummy; } ;
struct siw_mr {struct ib_mr base_mr; TYPE_1__* mem; } ;
struct siw_device {int num_mr; } ;
struct ib_pd {int device; } ;
struct TYPE_2__ {int stag_valid; int stag; } ;


 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ SIW_MAX_MR ;
 int ULONG_MAX ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 int kfree (struct siw_mr*) ;
 struct siw_mr* kzalloc (int,int ) ;
 int siw_dbg_pd (struct ib_pd*,char*,...) ;
 int siw_mr_add_mem (struct siw_mr*,struct ib_pd*,int *,int ,int ,int) ;
 struct siw_device* to_siw_dev (int ) ;

struct ib_mr *siw_get_dma_mr(struct ib_pd *pd, int rights)
{
 struct siw_device *sdev = to_siw_dev(pd->device);
 struct siw_mr *mr = ((void*)0);
 int rv;

 if (atomic_inc_return(&sdev->num_mr) > SIW_MAX_MR) {
  siw_dbg_pd(pd, "too many mr's\n");
  rv = -ENOMEM;
  goto err_out;
 }
 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr) {
  rv = -ENOMEM;
  goto err_out;
 }
 rv = siw_mr_add_mem(mr, pd, ((void*)0), 0, ULONG_MAX, rights);
 if (rv)
  goto err_out;

 mr->mem->stag_valid = 1;

 siw_dbg_pd(pd, "[MEM %u]: success\n", mr->mem->stag);

 return &mr->base_mr;

err_out:
 if (rv)
  kfree(mr);

 atomic_dec(&sdev->num_mr);

 return ERR_PTR(rv);
}
