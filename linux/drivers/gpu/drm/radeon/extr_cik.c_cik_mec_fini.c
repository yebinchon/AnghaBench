
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * hpd_eop_obj; } ;
struct radeon_device {TYPE_1__ mec; int dev; } ;


 int dev_warn (int ,char*,int) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_unpin (int *) ;
 int radeon_bo_unref (int **) ;
 int radeon_bo_unreserve (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void cik_mec_fini(struct radeon_device *rdev)
{
 int r;

 if (rdev->mec.hpd_eop_obj) {
  r = radeon_bo_reserve(rdev->mec.hpd_eop_obj, 0);
  if (unlikely(r != 0))
   dev_warn(rdev->dev, "(%d) reserve HPD EOP bo failed\n", r);
  radeon_bo_unpin(rdev->mec.hpd_eop_obj);
  radeon_bo_unreserve(rdev->mec.hpd_eop_obj);

  radeon_bo_unref(&rdev->mec.hpd_eop_obj);
  rdev->mec.hpd_eop_obj = ((void*)0);
 }
}
