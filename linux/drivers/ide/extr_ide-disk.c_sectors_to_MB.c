
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_div (unsigned long long,int) ;

__attribute__((used)) static unsigned long long sectors_to_MB(unsigned long long n)
{
 n <<= 9;
 do_div(n, 1000000);
 return n;
}
