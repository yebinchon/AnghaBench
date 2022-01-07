
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clamp (int,int ,int) ;
 int* tpg_linear_to_rec709 ;

__attribute__((used)) static inline int linear_to_rec709(int v)
{
 v = clamp(v, 0, 0xff0);
 return tpg_linear_to_rec709[v];
}
