
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int PSN_SHIFT ;

__attribute__((used)) static inline int cmp_psn(u32 a, u32 b)
{
 return (((int)a) - ((int)b)) << PSN_SHIFT;
}
