
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pdev; } ;
struct bnxt_re_dev {struct bnxt_en_dev* en_dev; TYPE_2__ qplib_res; } ;
struct bnxt_en_dev {int pdev; TYPE_1__* en_ops; } ;
struct TYPE_3__ {int (* bnxt_register_device ) (struct bnxt_en_dev*,int ,int *,struct bnxt_re_dev*) ;} ;


 int BNXT_ROCE_ULP ;
 int EINVAL ;
 int bnxt_re_ulp_ops ;
 int stub1 (struct bnxt_en_dev*,int ,int *,struct bnxt_re_dev*) ;

__attribute__((used)) static int bnxt_re_register_netdev(struct bnxt_re_dev *rdev)
{
 struct bnxt_en_dev *en_dev;
 int rc = 0;

 if (!rdev)
  return -EINVAL;

 en_dev = rdev->en_dev;

 rc = en_dev->en_ops->bnxt_register_device(en_dev, BNXT_ROCE_ULP,
        &bnxt_re_ulp_ops, rdev);
 rdev->qplib_res.pdev = rdev->en_dev->pdev;
 return rc;
}
