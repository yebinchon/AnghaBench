
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * cctx; } ;
struct TYPE_3__ {int * res; } ;
struct bnxt_re_dev {TYPE_2__ qplib_res; TYPE_1__ rcfw; } ;



__attribute__((used)) static void bnxt_re_destroy_chip_ctx(struct bnxt_re_dev *rdev)
{
 rdev->rcfw.res = ((void*)0);
 rdev->qplib_res.cctx = ((void*)0);
}
