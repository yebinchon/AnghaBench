
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int da9150_gpadc_ibus_current_avg(int raw_val)
{

 return (4 * ((raw_val * 1000) + 500)) / 2048;
}
