
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int dml_round_to_multiple(unsigned int num,
       unsigned int multiple,
       bool up)
{
 unsigned int remainder;

 if (multiple == 0)
  return num;

 remainder = num % multiple;

 if (remainder == 0)
  return num;

 if (up)
  return (num + multiple - remainder);
 else
  return (num - remainder);
}
