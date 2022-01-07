
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ workq; } ;
struct gm12u320_device {int cmd_buf; int * data_buf; TYPE_1__ fb_update; } ;


 int GM12U320_BLOCK_COUNT ;
 int destroy_workqueue (scalar_t__) ;
 int kfree (int ) ;

__attribute__((used)) static void gm12u320_usb_free(struct gm12u320_device *gm12u320)
{
 int i;

 if (gm12u320->fb_update.workq)
  destroy_workqueue(gm12u320->fb_update.workq);

 for (i = 0; i < GM12U320_BLOCK_COUNT; i++)
  kfree(gm12u320->data_buf[i]);

 kfree(gm12u320->cmd_buf);
}
