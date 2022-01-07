
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gpu {int event_free; int event_bitmap; int dev; } ;


 int clear_bit (unsigned int,int ) ;
 int complete (int *) ;
 int dev_warn (int ,char*,unsigned int) ;
 int test_bit (unsigned int,int ) ;

__attribute__((used)) static void event_free(struct etnaviv_gpu *gpu, unsigned int event)
{
 if (!test_bit(event, gpu->event_bitmap)) {
  dev_warn(gpu->dev, "event %u is already marked as free",
    event);
 } else {
  clear_bit(event, gpu->event_bitmap);
  complete(&gpu->event_free);
 }
}
