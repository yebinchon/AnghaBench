
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double dml_max (double,double) ;

__attribute__((used)) static inline double dml_max3(double a, double b, double c)
{
 return dml_max(dml_max(a, b), c);
}
