
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void skl_wrpll_get_multipliers(unsigned int p,
          unsigned int *p0 ,
          unsigned int *p1 ,
          unsigned int *p2 )
{

 if (p % 2 == 0) {
  unsigned int half = p / 2;

  if (half == 1 || half == 2 || half == 3 || half == 5) {
   *p0 = 2;
   *p1 = 1;
   *p2 = half;
  } else if (half % 2 == 0) {
   *p0 = 2;
   *p1 = half / 2;
   *p2 = 2;
  } else if (half % 3 == 0) {
   *p0 = 3;
   *p1 = half / 3;
   *p2 = 2;
  } else if (half % 7 == 0) {
   *p0 = 7;
   *p1 = half / 7;
   *p2 = 2;
  }
 } else if (p == 3 || p == 9) {
  *p0 = 3;
  *p1 = 1;
  *p2 = p / 3;
 } else if (p == 5 || p == 7) {
  *p0 = p;
  *p1 = 1;
  *p2 = 1;
 } else if (p == 15) {
  *p0 = 3;
  *p1 = 1;
  *p2 = 5;
 } else if (p == 21) {
  *p0 = 7;
  *p1 = 1;
  *p2 = 3;
 } else if (p == 35) {
  *p0 = 7;
  *p1 = 1;
  *p2 = 5;
 }
}
