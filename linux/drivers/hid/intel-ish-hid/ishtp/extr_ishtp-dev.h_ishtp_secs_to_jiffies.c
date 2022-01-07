
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MSEC_PER_SEC ;
 unsigned long msecs_to_jiffies (unsigned long) ;

__attribute__((used)) static inline unsigned long ishtp_secs_to_jiffies(unsigned long sec)
{
 return msecs_to_jiffies(sec * MSEC_PER_SEC);
}
