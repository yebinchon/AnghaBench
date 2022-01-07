
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hisi_qm {TYPE_2__* ops; TYPE_1__* pdev; } ;
struct TYPE_4__ {int (* qm_db ) (struct hisi_qm*,int ,int ,int ,int ) ;} ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*,int ,int ,int ) ;
 int stub1 (struct hisi_qm*,int ,int ,int ,int ) ;

__attribute__((used)) static void qm_db(struct hisi_qm *qm, u16 qn, u8 cmd, u16 index, u8 priority)
{
 dev_dbg(&qm->pdev->dev, "QM doorbell request: qn=%u, cmd=%u, index=%u\n",
  qn, cmd, index);

 qm->ops->qm_db(qm, qn, cmd, index, priority);
}
