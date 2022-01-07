
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clamp_val (int,int ,int) ;

__attribute__((used)) static inline int FAN_TO_REG(long val, int tpc)
{
 if (tpc) {
  return clamp_val(val / tpc, 0, 0xffff);
 } else {
  return (val <= 0) ? 0xffff :
   clamp_val(90000 * 60 / val, 0, 0xfffe);
 }
}
