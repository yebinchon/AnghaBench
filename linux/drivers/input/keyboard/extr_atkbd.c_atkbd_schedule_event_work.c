
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atkbd {int event_work; int event_mask; scalar_t__ event_jiffies; } ;


 scalar_t__ jiffies ;
 int mb () ;
 unsigned long msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,unsigned long) ;
 int set_bit (int,int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void atkbd_schedule_event_work(struct atkbd *atkbd, int event_bit)
{
 unsigned long delay = msecs_to_jiffies(50);

 if (time_after(jiffies, atkbd->event_jiffies + delay))
  delay = 0;

 atkbd->event_jiffies = jiffies;
 set_bit(event_bit, &atkbd->event_mask);
 mb();
 schedule_delayed_work(&atkbd->event_work, delay);
}
