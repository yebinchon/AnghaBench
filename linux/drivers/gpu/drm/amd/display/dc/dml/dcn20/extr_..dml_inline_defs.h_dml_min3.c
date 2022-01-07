
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double dml_min (double,double) ;

__attribute__((used)) static inline double dml_min3(double a, double b, double c)
{
 return dml_min(dml_min(a, b), c);
}
