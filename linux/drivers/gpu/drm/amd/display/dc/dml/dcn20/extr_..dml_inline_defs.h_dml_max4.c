
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double dml_max (double,double) ;

__attribute__((used)) static inline double dml_max4(double a, double b, double c, double d)
{
 return dml_max(dml_max(a, b), dml_max(c, d));
}
