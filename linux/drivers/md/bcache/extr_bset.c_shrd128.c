
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



__attribute__((used)) static inline uint64_t shrd128(uint64_t high, uint64_t low, uint8_t shift)
{
 low >>= shift;
 low |= (high << 1) << (63U - shift);
 return low;
}
