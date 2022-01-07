
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_re_dev {int is_virtfn; TYPE_1__* en_dev; } ;
struct bnxt {int dummy; } ;
struct TYPE_2__ {int net; } ;


 scalar_t__ BNXT_VF (struct bnxt*) ;
 struct bnxt* netdev_priv (int ) ;

__attribute__((used)) static void bnxt_re_get_sriov_func_type(struct bnxt_re_dev *rdev)
{
 struct bnxt *bp;

 bp = netdev_priv(rdev->en_dev->net);
 if (BNXT_VF(bp))
  rdev->is_virtfn = 1;
}
