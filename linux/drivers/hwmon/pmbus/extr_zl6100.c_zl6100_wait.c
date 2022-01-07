
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zl6100_data {scalar_t__ delay; int access; } ;
typedef scalar_t__ s64 ;


 int ktime_get () ;
 scalar_t__ ktime_us_delta (int ,int ) ;
 int udelay (scalar_t__) ;

__attribute__((used)) static inline void zl6100_wait(const struct zl6100_data *data)
{
 if (data->delay) {
  s64 delta = ktime_us_delta(ktime_get(), data->access);
  if (delta < data->delay)
   udelay(data->delay - delta);
 }
}
