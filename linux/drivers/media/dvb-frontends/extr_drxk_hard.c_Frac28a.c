
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 Frac28a(u32 a, u32 c)
{
 int i = 0;
 u32 Q1 = 0;
 u32 R0 = 0;

 R0 = (a % c) << 4;
 Q1 = a / c;





 for (i = 0; i < 7; i++) {
  Q1 = (Q1 << 4) | (R0 / c);
  R0 = (R0 % c) << 4;
 }

 if ((R0 >> 3) >= c)
  Q1++;

 return Q1;
}
