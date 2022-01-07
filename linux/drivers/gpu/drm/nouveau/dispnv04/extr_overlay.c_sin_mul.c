
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
sin_mul(int degrees, int factor)
{
 if (degrees > 180) {
  degrees -= 180;
  factor *= -1;
 }
 return factor * 4 * degrees * (180 - degrees) /
  (40500 - degrees * (180 - degrees));
}
