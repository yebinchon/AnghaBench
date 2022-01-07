
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_tracker {scalar_t__ idle_time; scalar_t__ in_flight; } ;


 int jiffies ;
 int time_after (int ,scalar_t__) ;

__attribute__((used)) static bool __iot_idle_for(struct io_tracker *iot, unsigned long jifs)
{
 if (iot->in_flight)
  return 0;

 return time_after(jiffies, iot->idle_time + jifs);
}
