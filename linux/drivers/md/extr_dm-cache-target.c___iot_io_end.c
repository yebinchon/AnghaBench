
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_tracker {int idle_time; scalar_t__ in_flight; } ;
typedef scalar_t__ sector_t ;


 int jiffies ;

__attribute__((used)) static void __iot_io_end(struct io_tracker *iot, sector_t len)
{
 if (!len)
  return;

 iot->in_flight -= len;
 if (!iot->in_flight)
  iot->idle_time = jiffies;
}
