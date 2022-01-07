
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvb_coef {int dummy; } ;


 int DIV_ROUND_UP (int,int const) ;
 int gk20a_volt_get_cvb_t_voltage (int,int,int,int,struct cvb_coef const*) ;

__attribute__((used)) static int
gk20a_volt_calc_voltage(const struct cvb_coef *coef, int speedo)
{
 static const int v_scale = 1000;
 int mv;

 mv = gk20a_volt_get_cvb_t_voltage(speedo, -10, 100, 10, coef);
 mv = DIV_ROUND_UP(mv, v_scale);

 return mv * 1000;
}
