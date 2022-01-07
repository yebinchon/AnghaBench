
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t adf_modulo(uint32_t data, uint32_t shift)
{
 uint32_t div = data >> shift;
 uint32_t mult = div << shift;

 return data - mult;
}
