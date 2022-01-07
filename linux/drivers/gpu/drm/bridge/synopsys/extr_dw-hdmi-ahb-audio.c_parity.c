
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 parity(u32 sample)
{
 sample ^= sample >> 16;
 sample ^= sample >> 8;
 sample ^= sample >> 4;
 sample ^= sample >> 2;
 sample ^= sample >> 1;
 return (sample & 1) << 27;
}
