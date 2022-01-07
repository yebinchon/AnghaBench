
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hisi_qm {TYPE_2__* ops; TYPE_1__* pdev; } ;
struct TYPE_4__ {int (* get_vft ) (struct hisi_qm*,int *,int *) ;} ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*) ;
 int stub1 (struct hisi_qm*,int *,int *) ;

int hisi_qm_get_vft(struct hisi_qm *qm, u32 *base, u32 *number)
{
 if (!base || !number)
  return -EINVAL;

 if (!qm->ops->get_vft) {
  dev_err(&qm->pdev->dev, "Don't support vft read!\n");
  return -EINVAL;
 }

 return qm->ops->get_vft(qm, base, number);
}
