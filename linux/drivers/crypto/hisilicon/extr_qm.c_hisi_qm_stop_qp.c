
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; int used; } ;
struct hisi_qp {int qp_id; TYPE_3__ qp_status; TYPE_2__* qm; } ;
struct device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {struct device dev; } ;


 int QP_STOP ;
 scalar_t__ atomic_read (int *) ;
 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*) ;
 int msleep (int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int hisi_qm_stop_qp(struct hisi_qp *qp)
{
 struct device *dev = &qp->qm->pdev->dev;
 int i = 0;


 if (test_bit(QP_STOP, &qp->qp_status.flags))
  return 0;

 while (atomic_read(&qp->qp_status.used)) {
  i++;
  msleep(20);
  if (i == 10) {
   dev_err(dev, "Cannot drain out data for stopping, Force to stop!\n");
   return 0;
  }
 }

 set_bit(QP_STOP, &qp->qp_status.flags);

 dev_dbg(dev, "stop queue %u!", qp->qp_id);

 return 0;
}
