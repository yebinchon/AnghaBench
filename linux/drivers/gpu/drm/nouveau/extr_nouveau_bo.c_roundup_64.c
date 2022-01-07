
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int do_div (int,int) ;

__attribute__((used)) static inline u64
roundup_64(u64 x, u32 y)
{
 x += y - 1;
 do_div(x, y);
 return x * y;
}
