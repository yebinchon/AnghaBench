
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ USHRT_MAX ;

__attribute__((used)) static u16 vlv_invert_wm_value(u16 wm, u16 fifo_size)
{
 if (wm > fifo_size)
  return USHRT_MAX;
 else
  return fifo_size - wm;
}
