
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PSN_SHIFT ;

__attribute__((used)) static inline u32 delta_psn(u32 a, u32 b)
{
 return (((int)a - (int)b) << PSN_SHIFT) >> PSN_SHIFT;
}
