
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atp {TYPE_1__* info; int input; TYPE_2__* intf; scalar_t__* xy_cur; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int xsensors; int xsensors_17; int xfact; int fuzz; } ;


 int ABS_X ;
 int ATP_XSENSORS ;
 int dev_info (int *,char*) ;
 int input_set_abs_params (int ,int ,int ,int,int ,int ) ;

__attribute__((used)) static void atp_detect_size(struct atp *dev)
{
 int i;


 for (i = dev->info->xsensors; i < ATP_XSENSORS; i++) {
  if (dev->xy_cur[i]) {

   dev_info(&dev->intf->dev,
    "appletouch: 17\" model detected.\n");

   input_set_abs_params(dev->input, ABS_X, 0,
          (dev->info->xsensors_17 - 1) *
       dev->info->xfact - 1,
          dev->info->fuzz, 0);
   break;
  }
 }
}
