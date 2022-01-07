
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u16 ;



__attribute__((used)) static inline u16 calc_clkdiv(unsigned long baseclk, unsigned int f)
{
 return (baseclk - f) / f;
}
