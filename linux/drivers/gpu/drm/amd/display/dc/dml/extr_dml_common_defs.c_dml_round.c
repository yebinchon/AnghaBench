
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double dml_ceil (double,int) ;
 double dml_floor (double,int) ;

double dml_round(double a)
{
 double round_pt = 0.5;
 double ceil = dml_ceil(a, 1);
 double floor = dml_floor(a, 1);

 if (a - floor >= round_pt)
  return ceil;
 else
  return floor;
}
