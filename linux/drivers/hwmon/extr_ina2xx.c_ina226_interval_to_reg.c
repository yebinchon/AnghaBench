
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int ARRAY_SIZE (int ) ;
 int DIV_ROUND_CLOSEST (int,int ) ;
 int INA226_SHIFT_AVG (int) ;
 int INA226_TOTAL_CONV_TIME_DEFAULT ;
 int find_closest (int,int ,int ) ;
 int ina226_avg_tab ;

__attribute__((used)) static u16 ina226_interval_to_reg(int interval)
{
 int avg, avg_bits;

 avg = DIV_ROUND_CLOSEST(interval * 1000,
    INA226_TOTAL_CONV_TIME_DEFAULT);
 avg_bits = find_closest(avg, ina226_avg_tab,
    ARRAY_SIZE(ina226_avg_tab));

 return INA226_SHIFT_AVG(avg_bits);
}
