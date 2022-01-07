
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jiffies ;
 int time_after_eq (int ,unsigned long) ;

__attribute__((used)) static inline int cmd_timeout(unsigned long tstamp, unsigned long timeout)
{
 return time_after_eq(jiffies, (tstamp + timeout));
}
