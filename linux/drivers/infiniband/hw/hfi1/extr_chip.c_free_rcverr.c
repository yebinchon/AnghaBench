
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ function; } ;
struct hfi1_devdata {TYPE_1__ rcverr_timer; } ;


 int del_timer_sync (TYPE_1__*) ;

__attribute__((used)) static void free_rcverr(struct hfi1_devdata *dd)
{
 if (dd->rcverr_timer.function)
  del_timer_sync(&dd->rcverr_timer);
}
