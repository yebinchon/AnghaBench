
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int access_flags; } ;
struct ib_mr {int dummy; } ;
struct rvt_mr {TYPE_1__ mr; struct ib_mr ibmr; } ;
struct ib_pd {int dummy; } ;
struct TYPE_6__ {scalar_t__ user; } ;


 int ENOMEM ;
 int EPERM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 TYPE_4__* ibpd_to_rvtpd (struct ib_pd*) ;
 int kfree (struct rvt_mr*) ;
 struct rvt_mr* kzalloc (int,int ) ;
 int rvt_alloc_lkey (TYPE_1__*,int) ;
 int rvt_deinit_mregion (TYPE_1__*) ;
 int rvt_init_mregion (TYPE_1__*,struct ib_pd*,int ,int ) ;

struct ib_mr *rvt_get_dma_mr(struct ib_pd *pd, int acc)
{
 struct rvt_mr *mr;
 struct ib_mr *ret;
 int rval;

 if (ibpd_to_rvtpd(pd)->user)
  return ERR_PTR(-EPERM);

 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr) {
  ret = ERR_PTR(-ENOMEM);
  goto bail;
 }

 rval = rvt_init_mregion(&mr->mr, pd, 0, 0);
 if (rval) {
  ret = ERR_PTR(rval);
  goto bail;
 }

 rval = rvt_alloc_lkey(&mr->mr, 1);
 if (rval) {
  ret = ERR_PTR(rval);
  goto bail_mregion;
 }

 mr->mr.access_flags = acc;
 ret = &mr->ibmr;
done:
 return ret;

bail_mregion:
 rvt_deinit_mregion(&mr->mr);
bail:
 kfree(mr);
 goto done;
}
