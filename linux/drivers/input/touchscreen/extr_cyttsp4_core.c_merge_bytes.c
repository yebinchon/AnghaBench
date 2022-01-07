
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline size_t merge_bytes(u8 high, u8 low)
{
 return (high << 8) + low;
}
