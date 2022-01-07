
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int __u8 ;
typedef int __u32 ;
typedef int __u16 ;



__attribute__((used)) static inline __u32 wacom_s32tou(s32 value, __u8 n)
{
 switch (n) {
 case 8: return ((__u8)value);
 case 16: return ((__u16)value);
 case 32: return ((__u32)value);
 }
 return value & (1 << (n - 1)) ? value & (~(~0U << n)) : value;
}
