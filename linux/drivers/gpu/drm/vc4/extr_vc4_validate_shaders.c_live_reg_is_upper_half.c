
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static bool
live_reg_is_upper_half(uint32_t lri)
{
 return (lri >= 16 && lri < 32) ||
  (lri >= 32 + 16 && lri < 32 + 32);
}
