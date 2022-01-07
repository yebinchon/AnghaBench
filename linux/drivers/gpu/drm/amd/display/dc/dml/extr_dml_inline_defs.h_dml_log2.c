
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dcn_bw_log (double,int) ;
 int dml_round (double) ;

__attribute__((used)) static inline int dml_log2(double x)
{
 return dml_round((double)dcn_bw_log(x, 2));
}
