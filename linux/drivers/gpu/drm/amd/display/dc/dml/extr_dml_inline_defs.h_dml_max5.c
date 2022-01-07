
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double dml_max (int ,double) ;
 int dml_max4 (double,double,double,double) ;

__attribute__((used)) static inline double dml_max5(double a, double b, double c, double d, double e)
{
 return dml_max(dml_max4(a, b, c, d), e);
}
