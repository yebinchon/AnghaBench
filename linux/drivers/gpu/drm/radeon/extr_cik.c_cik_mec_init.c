
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_mec; int num_pipe; int num_queue; int * hpd_eop_obj; int hpd_eop_gpu_addr; } ;
struct radeon_device {scalar_t__ family; TYPE_1__ mec; int dev; } ;


 scalar_t__ CHIP_KAVERI ;
 int MEC_HPD_SIZE ;
 int PAGE_SIZE ;
 int RADEON_GEM_DOMAIN_GTT ;
 int cik_mec_fini (struct radeon_device*) ;
 int dev_warn (int ,char*,int) ;
 int memset (int *,int ,int) ;
 int radeon_bo_create (struct radeon_device*,int,int ,int,int ,int ,int *,int *,int **) ;
 int radeon_bo_kmap (int *,void**) ;
 int radeon_bo_kunmap (int *) ;
 int radeon_bo_pin (int *,int ,int *) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_unreserve (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int cik_mec_init(struct radeon_device *rdev)
{
 int r;
 u32 *hpd;





 if (rdev->family == CHIP_KAVERI)
  rdev->mec.num_mec = 2;
 else
  rdev->mec.num_mec = 1;
 rdev->mec.num_pipe = 4;
 rdev->mec.num_queue = rdev->mec.num_mec * rdev->mec.num_pipe * 8;

 if (rdev->mec.hpd_eop_obj == ((void*)0)) {
  r = radeon_bo_create(rdev,
         rdev->mec.num_mec *rdev->mec.num_pipe * MEC_HPD_SIZE * 2,
         PAGE_SIZE, 1,
         RADEON_GEM_DOMAIN_GTT, 0, ((void*)0), ((void*)0),
         &rdev->mec.hpd_eop_obj);
  if (r) {
   dev_warn(rdev->dev, "(%d) create HDP EOP bo failed\n", r);
   return r;
  }
 }

 r = radeon_bo_reserve(rdev->mec.hpd_eop_obj, 0);
 if (unlikely(r != 0)) {
  cik_mec_fini(rdev);
  return r;
 }
 r = radeon_bo_pin(rdev->mec.hpd_eop_obj, RADEON_GEM_DOMAIN_GTT,
     &rdev->mec.hpd_eop_gpu_addr);
 if (r) {
  dev_warn(rdev->dev, "(%d) pin HDP EOP bo failed\n", r);
  cik_mec_fini(rdev);
  return r;
 }
 r = radeon_bo_kmap(rdev->mec.hpd_eop_obj, (void **)&hpd);
 if (r) {
  dev_warn(rdev->dev, "(%d) map HDP EOP bo failed\n", r);
  cik_mec_fini(rdev);
  return r;
 }


 memset(hpd, 0, rdev->mec.num_mec *rdev->mec.num_pipe * MEC_HPD_SIZE * 2);

 radeon_bo_kunmap(rdev->mec.hpd_eop_obj);
 radeon_bo_unreserve(rdev->mec.hpd_eop_obj);

 return 0;
}
