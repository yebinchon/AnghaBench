
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct msm_ringbuffer {int id; TYPE_2__* gpu; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int dev; } ;


 int DRM_DEV_ERROR (int ,char*,int ) ;
 scalar_t__ ring_freewords (struct msm_ringbuffer*) ;
 scalar_t__ spin_until (int) ;

void adreno_wait_ring(struct msm_ringbuffer *ring, uint32_t ndwords)
{
 if (spin_until(ring_freewords(ring) >= ndwords))
  DRM_DEV_ERROR(ring->gpu->dev->dev,
   "timeout waiting for space in ringbuffer %d\n",
   ring->id);
}
