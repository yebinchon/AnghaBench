
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct magicmouse_sc {int ntouches; int* tracking_ids; TYPE_1__* touches; } ;
struct TYPE_2__ {int size; } ;



__attribute__((used)) static int magicmouse_firm_touch(struct magicmouse_sc *msc)
{
 int touch = -1;
 int ii;




 for (ii = 0; ii < msc->ntouches; ii++) {
  int idx = msc->tracking_ids[ii];
  if (msc->touches[idx].size < 8) {

  } else if (touch >= 0) {
   touch = -1;
   break;
  } else {
   touch = idx;
  }
 }

 return touch;
}
