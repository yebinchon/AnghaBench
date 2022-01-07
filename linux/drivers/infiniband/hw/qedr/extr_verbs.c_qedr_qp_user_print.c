
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int buf_len; int buf_addr; } ;
struct TYPE_3__ {int buf_len; int buf_addr; } ;
struct qedr_qp {TYPE_2__ urq; TYPE_1__ usq; } ;
struct qedr_dev {int dummy; } ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,struct qedr_qp*,int ,int ,int ,int ) ;
 int QEDR_MSG_QP ;

__attribute__((used)) static inline void qedr_qp_user_print(struct qedr_dev *dev, struct qedr_qp *qp)
{
 DP_DEBUG(dev, QEDR_MSG_QP, "create qp: successfully created user QP. "
   "qp=%p. "
   "sq_addr=0x%llx, "
   "sq_len=%zd, "
   "rq_addr=0x%llx, "
   "rq_len=%zd"
   "\n",
   qp,
   qp->usq.buf_addr,
   qp->usq.buf_len, qp->urq.buf_addr, qp->urq.buf_len);
}
