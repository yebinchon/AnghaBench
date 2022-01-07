
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int __u32 ;
typedef int __s8 ;
typedef int __s32 ;
typedef int __s16 ;



__attribute__((used)) static s32 snto32(__u32 value, unsigned n)
{
 switch (n) {
 case 8: return ((__s8)value);
 case 16: return ((__s16)value);
 case 32: return ((__s32)value);
 }
 return value & (1 << (n - 1)) ? value | (~0U << n) : value;
}
