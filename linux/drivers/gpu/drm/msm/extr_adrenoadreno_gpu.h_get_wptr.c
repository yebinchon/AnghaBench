
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msm_ringbuffer {int cur; int start; } ;


 int MSM_GPU_RINGBUFFER_SZ ;

__attribute__((used)) static inline uint32_t get_wptr(struct msm_ringbuffer *ring)
{
 return (ring->cur - ring->start) % (MSM_GPU_RINGBUFFER_SZ >> 2);
}
