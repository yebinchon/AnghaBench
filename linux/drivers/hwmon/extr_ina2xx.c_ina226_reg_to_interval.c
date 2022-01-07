
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int DIV_ROUND_CLOSEST (int,int) ;
 size_t INA226_READ_AVG (int ) ;
 int INA226_TOTAL_CONV_TIME_DEFAULT ;
 int* ina226_avg_tab ;

__attribute__((used)) static int ina226_reg_to_interval(u16 config)
{
 int avg = ina226_avg_tab[INA226_READ_AVG(config)];





 return DIV_ROUND_CLOSEST(avg * INA226_TOTAL_CONV_TIME_DEFAULT, 1000);
}
