
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 unsigned int gcd (unsigned int,unsigned int) ;

__attribute__((used)) static void avivo_reduce_ratio(unsigned *nom, unsigned *den,
          unsigned nom_min, unsigned den_min)
{
 unsigned tmp;


 tmp = gcd(*nom, *den);
 *nom /= tmp;
 *den /= tmp;


 if (*nom < nom_min) {
  tmp = DIV_ROUND_UP(nom_min, *nom);
  *nom *= tmp;
  *den *= tmp;
 }


 if (*den < den_min) {
  tmp = DIV_ROUND_UP(den_min, *den);
  *nom *= tmp;
  *den *= tmp;
 }
}
