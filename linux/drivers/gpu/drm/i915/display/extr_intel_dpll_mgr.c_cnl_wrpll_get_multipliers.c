
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void cnl_wrpll_get_multipliers(int bestdiv, int *pdiv,
          int *qdiv, int *kdiv)
{

 if (bestdiv % 2 == 0) {
  if (bestdiv == 2) {
   *pdiv = 2;
   *qdiv = 1;
   *kdiv = 1;
  } else if (bestdiv % 4 == 0) {
   *pdiv = 2;
   *qdiv = bestdiv / 4;
   *kdiv = 2;
  } else if (bestdiv % 6 == 0) {
   *pdiv = 3;
   *qdiv = bestdiv / 6;
   *kdiv = 2;
  } else if (bestdiv % 5 == 0) {
   *pdiv = 5;
   *qdiv = bestdiv / 10;
   *kdiv = 2;
  } else if (bestdiv % 14 == 0) {
   *pdiv = 7;
   *qdiv = bestdiv / 14;
   *kdiv = 2;
  }
 } else {
  if (bestdiv == 3 || bestdiv == 5 || bestdiv == 7) {
   *pdiv = bestdiv;
   *qdiv = 1;
   *kdiv = 1;
  } else {
   *pdiv = bestdiv / 3;
   *qdiv = 1;
   *kdiv = 3;
  }
 }
}
