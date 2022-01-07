
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int fixed ;


 int fixed1 ;

__attribute__((used)) static inline int32_t round_fixed(fixed x)
{
 return (x + fixed1/2) >> 32;
}
