
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static u16 ml_calculate_direction(u16 direction, u16 force,
      u16 new_direction, u16 new_force)
{
 if (!force)
  return new_direction;
 if (!new_force)
  return direction;
 return (((u32)(direction >> 1) * force +
   (new_direction >> 1) * new_force) /
  (force + new_force)) << 1;
}
