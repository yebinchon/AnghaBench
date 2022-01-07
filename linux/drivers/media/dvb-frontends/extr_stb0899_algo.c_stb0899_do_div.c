
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int do_div (int ,int ) ;

__attribute__((used)) static inline u32 stb0899_do_div(u64 n, u32 d)
{


 do_div(n, d);
 return n;
}
