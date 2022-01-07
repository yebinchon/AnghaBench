
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efa_comp_ctx {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct efa_com_admin_queue {int state; TYPE_1__ sq; int efa_dev; } ;
struct efa_admin_aq_entry {int dummy; } ;
struct efa_admin_acq_entry {int dummy; } ;


 int EFA_AQ_STATE_RUNNING_BIT ;
 int ENODEV ;
 struct efa_comp_ctx* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct efa_comp_ctx*) ;
 struct efa_comp_ctx* __efa_com_submit_admin_cmd (struct efa_com_admin_queue*,struct efa_admin_aq_entry*,size_t,struct efa_admin_acq_entry*,size_t) ;
 int clear_bit (int ,int *) ;
 int ibdev_err_ratelimited (int ,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static struct efa_comp_ctx *efa_com_submit_admin_cmd(struct efa_com_admin_queue *aq,
           struct efa_admin_aq_entry *cmd,
           size_t cmd_size_in_bytes,
           struct efa_admin_acq_entry *comp,
           size_t comp_size_in_bytes)
{
 struct efa_comp_ctx *comp_ctx;

 spin_lock(&aq->sq.lock);
 if (!test_bit(EFA_AQ_STATE_RUNNING_BIT, &aq->state)) {
  ibdev_err_ratelimited(aq->efa_dev, "Admin queue is closed\n");
  spin_unlock(&aq->sq.lock);
  return ERR_PTR(-ENODEV);
 }

 comp_ctx = __efa_com_submit_admin_cmd(aq, cmd, cmd_size_in_bytes, comp,
           comp_size_in_bytes);
 spin_unlock(&aq->sq.lock);
 if (IS_ERR(comp_ctx))
  clear_bit(EFA_AQ_STATE_RUNNING_BIT, &aq->state);

 return comp_ctx;
}
