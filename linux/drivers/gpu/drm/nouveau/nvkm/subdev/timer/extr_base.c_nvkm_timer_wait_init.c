
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvkm_timer_wait {scalar_t__ reads; int limit; int tmr; } ;
struct nvkm_device {int timer; } ;



void
nvkm_timer_wait_init(struct nvkm_device *device, u64 nsec,
       struct nvkm_timer_wait *wait)
{
 wait->tmr = device->timer;
 wait->limit = nsec;
 wait->reads = 0;
}
