
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int* bit_counts ;

__attribute__((used)) static inline u8 nibble_to_count(u8 nibble)
{
 return bit_counts[nibble & 0xf];
}
