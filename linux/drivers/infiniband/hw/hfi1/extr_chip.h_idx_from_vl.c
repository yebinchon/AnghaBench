
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C_VL_15 ;

__attribute__((used)) static inline int idx_from_vl(int vl)
{
 return (vl == 15 ? C_VL_15 : vl);
}
