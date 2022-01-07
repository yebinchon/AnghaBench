
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {int poll_interval; } ;


 int HZ ;
 int POLL_INTERVAL_BURST ;
 int POLL_INTERVAL_DEFAULT ;
 int jiffies ;
 scalar_t__ jiffies_last_press ;
 int poll_bios (int) ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static void wistron_poll(struct input_polled_dev *dev)
{
 poll_bios(0);


 if (time_before(jiffies, jiffies_last_press + 2 * HZ))
  dev->poll_interval = POLL_INTERVAL_BURST;
 else
  dev->poll_interval = POLL_INTERVAL_DEFAULT;
}
