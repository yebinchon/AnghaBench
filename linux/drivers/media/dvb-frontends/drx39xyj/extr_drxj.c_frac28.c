
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 frac28(u32 N, u32 D)
{
 int i = 0;
 u32 Q1 = 0;
 u32 R0 = 0;

 R0 = (N % D) << 4;
 Q1 = N / D;



 for (i = 0; i < 7; i++) {
  Q1 = (Q1 << 4) | R0 / D;
  R0 = (R0 % D) << 4;
 }

 if ((R0 >> 3) >= D)
  Q1++;

 return Q1;
}
