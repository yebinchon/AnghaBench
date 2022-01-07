
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dcn_bw_min2 (double,double) ;

__attribute__((used)) static inline double dml_min(double a, double b)
{
 return (double) dcn_bw_min2(a, b);
}
