
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hisi_qp {int dummy; } ;
struct hisi_qm {int qp_num; scalar_t__ fun_type; struct hisi_qp** qp_array; scalar_t__ io_base; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ QM_HW_PF ;
 scalar_t__ QM_VF_AEQ_INT_MASK ;
 scalar_t__ QM_VF_EQ_INT_MASK ;
 int WARN_ON (int) ;
 int dev_err (struct device*,char*,...) ;
 int hisi_qm_set_vft (struct hisi_qm*,int ,int ,int ) ;
 int hisi_qm_stop_qp (struct hisi_qp*) ;
 int writel (int,scalar_t__) ;

int hisi_qm_stop(struct hisi_qm *qm)
{
 struct device *dev;
 struct hisi_qp *qp;
 int ret = 0, i;

 if (!qm || !qm->pdev) {
  WARN_ON(1);
  return -EINVAL;
 }

 dev = &qm->pdev->dev;


 writel(0x1, qm->io_base + QM_VF_EQ_INT_MASK);
 writel(0x1, qm->io_base + QM_VF_AEQ_INT_MASK);


 for (i = 0; i < qm->qp_num; i++) {
  qp = qm->qp_array[i];
  if (qp) {
   ret = hisi_qm_stop_qp(qp);
   if (ret < 0) {
    dev_err(dev, "Failed to stop qp%d!\n", i);
    return -EBUSY;
   }
  }
 }

 if (qm->fun_type == QM_HW_PF) {
  ret = hisi_qm_set_vft(qm, 0, 0, 0);
  if (ret < 0)
   dev_err(dev, "Failed to set vft!\n");
 }

 return ret;
}
