
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
struct rvt_mregion {TYPE_1__ refcount; scalar_t__ lkey; TYPE_2__* pd; int comp; } ;
struct rvt_dev_info {int dummy; } ;
struct TYPE_4__ {int device; } ;


 int EBUSY ;
 int HZ ;
 int atomic_long_read (int *) ;
 struct rvt_dev_info* ib_to_rvt (int ) ;
 int rvt_dereg_clean_qps (struct rvt_mregion*) ;
 int rvt_get_mr (struct rvt_mregion*) ;
 int rvt_pr_err (struct rvt_dev_info*,char*,char const*,struct rvt_mregion*,TYPE_2__*,scalar_t__,int ) ;
 int synchronize_rcu () ;
 unsigned long wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int rvt_check_refs(struct rvt_mregion *mr, const char *t)
{
 unsigned long timeout;
 struct rvt_dev_info *rdi = ib_to_rvt(mr->pd->device);

 if (mr->lkey) {

  rvt_dereg_clean_qps(mr);

  synchronize_rcu();
 }

 timeout = wait_for_completion_timeout(&mr->comp, 5 * HZ);
 if (!timeout) {
  rvt_pr_err(rdi,
      "%s timeout mr %p pd %p lkey %x refcount %ld\n",
      t, mr, mr->pd, mr->lkey,
      atomic_long_read(&mr->refcount.count));
  rvt_get_mr(mr);
  return -EBUSY;
 }
 return 0;
}
