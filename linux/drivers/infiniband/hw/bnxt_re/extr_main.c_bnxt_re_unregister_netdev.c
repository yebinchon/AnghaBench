
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_re_dev {struct bnxt_en_dev* en_dev; } ;
struct bnxt_en_dev {TYPE_1__* en_ops; } ;
struct TYPE_2__ {int (* bnxt_unregister_device ) (struct bnxt_en_dev*,int ) ;} ;


 int BNXT_ROCE_ULP ;
 int EINVAL ;
 int stub1 (struct bnxt_en_dev*,int ) ;

__attribute__((used)) static int bnxt_re_unregister_netdev(struct bnxt_re_dev *rdev)
{
 struct bnxt_en_dev *en_dev;
 int rc;

 if (!rdev)
  return -EINVAL;

 en_dev = rdev->en_dev;

 rc = en_dev->en_ops->bnxt_unregister_device(rdev->en_dev,
          BNXT_ROCE_ULP);
 return rc;
}
