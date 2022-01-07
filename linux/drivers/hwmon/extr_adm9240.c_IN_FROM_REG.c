
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned int SCALE (int ,int ,int) ;
 int * nom_mv ;

__attribute__((used)) static inline unsigned int IN_FROM_REG(u8 reg, int n)
{
 return SCALE(reg, nom_mv[n], 192);
}
