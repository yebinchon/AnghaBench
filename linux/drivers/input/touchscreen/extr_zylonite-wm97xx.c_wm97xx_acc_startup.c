
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wm97xx {scalar_t__ id; int dev; int acc_slot; int acc_rate; int * ac97; } ;
struct TYPE_3__ {scalar_t__ id; scalar_t__ speed; int code; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENODEV ;
 int ac97_touch_slot ;
 TYPE_1__* cinfo ;
 scalar_t__ cont_rate ;
 int dev_info (int ,char*,scalar_t__) ;
 size_t sp_idx ;

__attribute__((used)) static int wm97xx_acc_startup(struct wm97xx *wm)
{
 int idx;


 if (wm->ac97 == ((void*)0))
  return -ENODEV;


 for (idx = 0; idx < ARRAY_SIZE(cinfo); idx++) {
  if (wm->id != cinfo[idx].id)
   continue;
  sp_idx = idx;
  if (cont_rate <= cinfo[idx].speed)
   break;
 }
 wm->acc_rate = cinfo[sp_idx].code;
 wm->acc_slot = ac97_touch_slot;
 dev_info(wm->dev,
   "zylonite accelerated touchscreen driver, %d samples/sec\n",
   cinfo[sp_idx].speed);

 return 0;
}
