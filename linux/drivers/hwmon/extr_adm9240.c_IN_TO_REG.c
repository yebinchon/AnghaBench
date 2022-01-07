
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SCALE (unsigned long,int,int) ;
 unsigned long clamp_val (unsigned long,int ,int) ;
 int* nom_mv ;

__attribute__((used)) static inline u8 IN_TO_REG(unsigned long val, int n)
{
 val = clamp_val(val, 0, nom_mv[n] * 255 / 192);
 return SCALE(val, 192, nom_mv[n]);
}
