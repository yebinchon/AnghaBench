
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static inline int hih6130_temp_ticks_to_millicelsius(int ticks)
{
 ticks = ticks >> 2;




 return (DIV_ROUND_CLOSEST(ticks * 1650, 16382) - 400) * 100;
}
