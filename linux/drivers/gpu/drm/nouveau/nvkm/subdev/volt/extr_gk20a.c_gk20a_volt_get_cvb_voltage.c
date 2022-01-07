
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvb_coef {int c2; int c1; int c0; } ;


 int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static inline int
gk20a_volt_get_cvb_voltage(int speedo, int s_scale, const struct cvb_coef *coef)
{
 int mv;

 mv = DIV_ROUND_CLOSEST(coef->c2 * speedo, s_scale);
 mv = DIV_ROUND_CLOSEST((mv + coef->c1) * speedo, s_scale) + coef->c0;
 return mv;
}
