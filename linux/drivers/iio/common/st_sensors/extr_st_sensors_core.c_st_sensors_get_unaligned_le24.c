
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int s32 ;



__attribute__((used)) static inline u32 st_sensors_get_unaligned_le24(const u8 *p)
{
 return (s32)((p[0] | p[1] << 8 | p[2] << 16) << 8) >> 8;
}
