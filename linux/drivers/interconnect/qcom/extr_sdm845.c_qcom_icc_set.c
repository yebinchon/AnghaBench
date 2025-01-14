
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcs_cmd {int dummy; } ;
struct qcom_icc_provider {int num_bcms; int dev; TYPE_1__** bcms; } ;
struct list_head {int dummy; } ;
struct icc_node {int provider; } ;
struct TYPE_2__ {scalar_t__* vote_x; scalar_t__* vote_y; int list; scalar_t__ dirty; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 size_t QCOM_ICC_BUCKET_AMC ;
 size_t QCOM_ICC_BUCKET_SLEEP ;
 size_t QCOM_ICC_BUCKET_WAKE ;
 int RPMH_ACTIVE_ONLY_STATE ;
 int RPMH_SLEEP_STATE ;
 int RPMH_WAKE_ONLY_STATE ;
 int SDM845_MAX_BCMS ;
 int SDM845_MAX_VCD ;
 int bcm_aggregate (TYPE_1__*) ;
 int list_add_tail (int *,struct list_head*) ;
 scalar_t__ list_empty (struct list_head*) ;
 int pr_err (char*,int) ;
 int rpmh_invalidate (int ) ;
 int rpmh_write_batch (int ,int ,struct tcs_cmd*,int*) ;
 int tcs_list_gen (struct list_head*,size_t,struct tcs_cmd*,int*) ;
 struct qcom_icc_provider* to_qcom_provider (int ) ;

__attribute__((used)) static int qcom_icc_set(struct icc_node *src, struct icc_node *dst)
{
 struct qcom_icc_provider *qp;
 struct icc_node *node;
 struct tcs_cmd cmds[SDM845_MAX_BCMS];
 struct list_head commit_list;
 int commit_idx[SDM845_MAX_VCD];
 int ret = 0, i;

 if (!src)
  node = dst;
 else
  node = src;

 qp = to_qcom_provider(node->provider);

 INIT_LIST_HEAD(&commit_list);

 for (i = 0; i < qp->num_bcms; i++) {
  if (qp->bcms[i]->dirty) {
   bcm_aggregate(qp->bcms[i]);
   list_add_tail(&qp->bcms[i]->list, &commit_list);
  }
 }





 tcs_list_gen(&commit_list, QCOM_ICC_BUCKET_AMC, cmds, commit_idx);

 if (!commit_idx[0])
  return ret;

 ret = rpmh_invalidate(qp->dev);
 if (ret) {
  pr_err("Error invalidating RPMH client (%d)\n", ret);
  return ret;
 }

 ret = rpmh_write_batch(qp->dev, RPMH_ACTIVE_ONLY_STATE,
          cmds, commit_idx);
 if (ret) {
  pr_err("Error sending AMC RPMH requests (%d)\n", ret);
  return ret;
 }

 INIT_LIST_HEAD(&commit_list);

 for (i = 0; i < qp->num_bcms; i++) {





  if (qp->bcms[i]->vote_x[QCOM_ICC_BUCKET_WAKE] !=
      qp->bcms[i]->vote_x[QCOM_ICC_BUCKET_SLEEP] ||
      qp->bcms[i]->vote_y[QCOM_ICC_BUCKET_WAKE] !=
      qp->bcms[i]->vote_y[QCOM_ICC_BUCKET_SLEEP]) {
   list_add_tail(&qp->bcms[i]->list, &commit_list);
  }
 }

 if (list_empty(&commit_list))
  return ret;

 tcs_list_gen(&commit_list, QCOM_ICC_BUCKET_WAKE, cmds, commit_idx);

 ret = rpmh_write_batch(qp->dev, RPMH_WAKE_ONLY_STATE, cmds, commit_idx);
 if (ret) {
  pr_err("Error sending WAKE RPMH requests (%d)\n", ret);
  return ret;
 }

 tcs_list_gen(&commit_list, QCOM_ICC_BUCKET_SLEEP, cmds, commit_idx);

 ret = rpmh_write_batch(qp->dev, RPMH_SLEEP_STATE, cmds, commit_idx);
 if (ret) {
  pr_err("Error sending SLEEP RPMH requests (%d)\n", ret);
  return ret;
 }

 return ret;
}
