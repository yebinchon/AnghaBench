
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int dummy; } ;


 int MODR ;
 int schedule_timeout_uninterruptible (int) ;

__attribute__((used)) static void wm97xx_acc_pen_up(struct wm97xx *wm)
{
 unsigned int count;

 schedule_timeout_uninterruptible(1);

 for (count = 0; count < 16; count++)
  MODR;
}
