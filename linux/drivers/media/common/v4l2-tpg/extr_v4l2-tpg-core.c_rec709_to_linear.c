
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clamp (int,int ,int) ;
 int* tpg_rec709_to_linear ;

__attribute__((used)) static inline int rec709_to_linear(int v)
{
 v = clamp(v, 0, 0xff0);
 return tpg_rec709_to_linear[v];
}
