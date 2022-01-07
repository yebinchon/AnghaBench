
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dcn_bw_pow (double,int) ;

__attribute__((used)) static inline double dml_pow(double a, int exp)
{
 return (double) dcn_bw_pow(a, exp);
}
