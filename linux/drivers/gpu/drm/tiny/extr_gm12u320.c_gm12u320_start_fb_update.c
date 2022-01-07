
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int run; int work; int workq; int lock; } ;
struct gm12u320_device {TYPE_1__ fb_update; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void gm12u320_start_fb_update(struct gm12u320_device *gm12u320)
{
 mutex_lock(&gm12u320->fb_update.lock);
 gm12u320->fb_update.run = 1;
 mutex_unlock(&gm12u320->fb_update.lock);

 queue_work(gm12u320->fb_update.workq, &gm12u320->fb_update.work);
}
