
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct hfi1_devdata {int synth_stats_timer; int update_cntr_work; int update_cntr_wq; } ;


 int HZ ;
 int SYNTH_CNT_TIME ;
 struct hfi1_devdata* dd ;
 struct hfi1_devdata* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int queue_work (int ,int *) ;
 int synth_stats_timer ;

__attribute__((used)) static void update_synth_timer(struct timer_list *t)
{
 struct hfi1_devdata *dd = from_timer(dd, t, synth_stats_timer);

 queue_work(dd->update_cntr_wq, &dd->update_cntr_work);
 mod_timer(&dd->synth_stats_timer, jiffies + HZ * SYNTH_CNT_TIME);
}
