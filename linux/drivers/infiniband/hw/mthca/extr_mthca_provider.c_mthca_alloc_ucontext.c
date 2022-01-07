
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uresp ;
struct mthca_ucontext {scalar_t__ reg_mr_warned; int uar; int db_tab; } ;
struct mthca_alloc_ucontext_resp {scalar_t__ uarc_size; int qp_tab_size; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {struct ib_device* device; } ;
struct ib_device {int dummy; } ;
struct TYPE_10__ {scalar_t__ uarc_size; } ;
struct TYPE_9__ {int num_qps; } ;
struct TYPE_11__ {TYPE_2__ uar_table; TYPE_1__ limits; int active; } ;


 int EAGAIN ;
 int EFAULT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ ib_copy_to_udata (struct ib_udata*,struct mthca_alloc_ucontext_resp*,int) ;
 int mthca_cleanup_user_db_tab (TYPE_3__*,int *,int ) ;
 int mthca_init_user_db_tab (TYPE_3__*) ;
 scalar_t__ mthca_is_memfree (TYPE_3__*) ;
 int mthca_uar_alloc (TYPE_3__*,int *) ;
 int mthca_uar_free (TYPE_3__*,int *) ;
 TYPE_3__* to_mdev (struct ib_device*) ;
 struct mthca_ucontext* to_mucontext (struct ib_ucontext*) ;

__attribute__((used)) static int mthca_alloc_ucontext(struct ib_ucontext *uctx,
    struct ib_udata *udata)
{
 struct ib_device *ibdev = uctx->device;
 struct mthca_alloc_ucontext_resp uresp = {};
 struct mthca_ucontext *context = to_mucontext(uctx);
 int err;

 if (!(to_mdev(ibdev)->active))
  return -EAGAIN;

 uresp.qp_tab_size = to_mdev(ibdev)->limits.num_qps;
 if (mthca_is_memfree(to_mdev(ibdev)))
  uresp.uarc_size = to_mdev(ibdev)->uar_table.uarc_size;
 else
  uresp.uarc_size = 0;

 err = mthca_uar_alloc(to_mdev(ibdev), &context->uar);
 if (err)
  return err;

 context->db_tab = mthca_init_user_db_tab(to_mdev(ibdev));
 if (IS_ERR(context->db_tab)) {
  err = PTR_ERR(context->db_tab);
  mthca_uar_free(to_mdev(ibdev), &context->uar);
  return err;
 }

 if (ib_copy_to_udata(udata, &uresp, sizeof(uresp))) {
  mthca_cleanup_user_db_tab(to_mdev(ibdev), &context->uar, context->db_tab);
  mthca_uar_free(to_mdev(ibdev), &context->uar);
  return -EFAULT;
 }

 context->reg_mr_warned = 0;

 return 0;
}
