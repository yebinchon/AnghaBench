
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dcn_bw_floor2 (double,double) ;

__attribute__((used)) static inline double dml_floor(double a, double granularity)
{
 return (double) dcn_bw_floor2(a, granularity);
}
