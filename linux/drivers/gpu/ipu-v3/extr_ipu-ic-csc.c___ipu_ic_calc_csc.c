
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_ic_csc {int dummy; } ;


 int calc_csc_coeffs (struct ipu_ic_csc*) ;

int __ipu_ic_calc_csc(struct ipu_ic_csc *csc)
{
 return calc_csc_coeffs(csc);
}
