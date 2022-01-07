
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {TYPE_1__* ring; int srbm_mutex; } ;
struct TYPE_2__ {int ready; } ;


 size_t CAYMAN_RING_TYPE_CP1_INDEX ;
 size_t CAYMAN_RING_TYPE_CP2_INDEX ;
 int CP_MEC_CNTL ;
 int MEC_ME1_HALT ;
 int MEC_ME2_HALT ;
 int WREG32 (int ,int) ;
 int cik_compute_stop (struct radeon_device*,TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int udelay (int) ;

__attribute__((used)) static void cik_cp_compute_enable(struct radeon_device *rdev, bool enable)
{
 if (enable)
  WREG32(CP_MEC_CNTL, 0);
 else {




  mutex_lock(&rdev->srbm_mutex);
  cik_compute_stop(rdev,&rdev->ring[CAYMAN_RING_TYPE_CP1_INDEX]);
  cik_compute_stop(rdev,&rdev->ring[CAYMAN_RING_TYPE_CP2_INDEX]);
  mutex_unlock(&rdev->srbm_mutex);

  WREG32(CP_MEC_CNTL, (MEC_ME1_HALT | MEC_ME2_HALT));
  rdev->ring[CAYMAN_RING_TYPE_CP1_INDEX].ready = 0;
  rdev->ring[CAYMAN_RING_TYPE_CP2_INDEX].ready = 0;
 }
 udelay(50);
}
