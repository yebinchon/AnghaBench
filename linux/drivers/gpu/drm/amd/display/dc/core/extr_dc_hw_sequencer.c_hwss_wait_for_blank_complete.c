
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timing_generator {TYPE_1__* funcs; } ;
struct TYPE_2__ {scalar_t__ (* is_blanked ) (struct timing_generator*) ;} ;


 int dm_error (char*) ;
 int msleep (int) ;
 scalar_t__ stub1 (struct timing_generator*) ;

bool hwss_wait_for_blank_complete(
  struct timing_generator *tg)
{
 int counter;


 if (!tg->funcs->is_blanked)
  return 1;
 for (counter = 0; counter < 100; counter++) {
  if (tg->funcs->is_blanked(tg))
   break;

  msleep(1);
 }

 if (counter == 100) {
  dm_error("DC: failed to blank crtc!\n");
  return 0;
 }

 return 1;
}
