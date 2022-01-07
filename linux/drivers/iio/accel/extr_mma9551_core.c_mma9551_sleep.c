
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msleep_interruptible (int) ;
 int usleep_range (int,int) ;

void mma9551_sleep(int freq)
{
 int sleep_val = 1000 / freq;

 if (sleep_val < 20)
  usleep_range(sleep_val * 1000, 20000);
 else
  msleep_interruptible(sleep_val);
}
