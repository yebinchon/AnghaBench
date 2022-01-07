
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int int_pow (int,int) ;

__attribute__((used)) static void split_micro_fraction(unsigned int no, int exp, int *val1, int *val2)
{
 int divisor = int_pow(10, exp);

 *val1 = no / divisor;
 *val2 = no % divisor * int_pow(10, 6 - exp);
}
