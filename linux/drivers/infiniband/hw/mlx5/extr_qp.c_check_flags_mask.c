
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static inline bool check_flags_mask(uint64_t input, uint64_t supported)
{
 return (input & ~supported) == 0;
}
