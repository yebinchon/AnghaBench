
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 int GET_TIME (unsigned int) ;
 unsigned int ktime_get_ns () ;
 scalar_t__ use_ktime ;

__attribute__((used)) static inline u64 get_time(void)
{
 if (use_ktime) {
  return ktime_get_ns();
 } else {
  unsigned int x;
  GET_TIME(x);
  return x;
 }
}
