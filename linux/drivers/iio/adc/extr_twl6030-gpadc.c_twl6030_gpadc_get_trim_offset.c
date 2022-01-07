
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s8 ;
typedef int __u32 ;


 int sign_extend32 (int,int) ;

__attribute__((used)) static inline int twl6030_gpadc_get_trim_offset(s8 d)
{







 __u32 temp = ((d & 0x7f) >> 1) | ((d & 1) << 6);

 return sign_extend32(temp, 6);
}
