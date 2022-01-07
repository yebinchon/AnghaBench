
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int rcverr_timer; scalar_t__ rcv_ovfl_cnt; } ;


 int HZ ;
 int RCVERR_CHECK_TIME ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timer_setup (int *,int ,int ) ;
 int update_rcverr_timer ;

__attribute__((used)) static int init_rcverr(struct hfi1_devdata *dd)
{
 timer_setup(&dd->rcverr_timer, update_rcverr_timer, 0);

 dd->rcv_ovfl_cnt = 0;
 return mod_timer(&dd->rcverr_timer, jiffies + HZ * RCVERR_CHECK_TIME);
}
