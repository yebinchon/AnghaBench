
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv090x_tab {int read; int real; } ;



__attribute__((used)) static int stv090x_table_lookup(const struct stv090x_tab *tab, int max, int val)
{
 int res = 0;
 int min = 0, med;

 if ((val >= tab[min].read && val < tab[max].read) ||
     (val >= tab[max].read && val < tab[min].read)) {
  while ((max - min) > 1) {
   med = (max + min) / 2;
   if ((val >= tab[min].read && val < tab[med].read) ||
       (val >= tab[med].read && val < tab[min].read))
    max = med;
   else
    min = med;
  }
  res = ((val - tab[min].read) *
         (tab[max].real - tab[min].real) /
         (tab[max].read - tab[min].read)) +
   tab[min].real;
 } else {
  if (tab[min].read < tab[max].read) {
   if (val < tab[min].read)
    res = tab[min].real;
   else if (val >= tab[max].read)
    res = tab[max].real;
  } else {
   if (val >= tab[min].read)
    res = tab[min].real;
   else if (val < tab[max].read)
    res = tab[max].real;
  }
 }

 return res;
}
