
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* cctx; } ;
struct TYPE_4__ {TYPE_2__* res; } ;
struct TYPE_6__ {int chip_num; } ;
struct bnxt_re_dev {TYPE_2__ qplib_res; TYPE_1__ rcfw; TYPE_3__ chip_ctx; struct bnxt_en_dev* en_dev; } ;
struct bnxt_en_dev {int net; } ;
struct bnxt {int chip_num; } ;


 struct bnxt* netdev_priv (int ) ;

__attribute__((used)) static int bnxt_re_setup_chip_ctx(struct bnxt_re_dev *rdev)
{
 struct bnxt_en_dev *en_dev;
 struct bnxt *bp;

 en_dev = rdev->en_dev;
 bp = netdev_priv(en_dev->net);

 rdev->chip_ctx.chip_num = bp->chip_num;


 rdev->qplib_res.cctx = &rdev->chip_ctx;
 rdev->rcfw.res = &rdev->qplib_res;

 return 0;
}
