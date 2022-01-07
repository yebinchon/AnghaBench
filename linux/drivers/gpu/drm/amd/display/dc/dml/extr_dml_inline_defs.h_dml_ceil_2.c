
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dcn_bw_ceil2 (double,int) ;

__attribute__((used)) static inline double dml_ceil_2(double f)
{
 return (double) dcn_bw_ceil2(f, 2);
}
