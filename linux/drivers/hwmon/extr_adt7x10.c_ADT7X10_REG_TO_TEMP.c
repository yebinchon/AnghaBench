
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adt7x10_data {int config; } ;
typedef int s16 ;


 int ADT7X10_RESOLUTION ;
 int ADT7X10_T13_VALUE_MASK ;
 int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static int ADT7X10_REG_TO_TEMP(struct adt7x10_data *data, s16 reg)
{

 if (!(data->config & ADT7X10_RESOLUTION))
  reg &= ADT7X10_T13_VALUE_MASK;




 return DIV_ROUND_CLOSEST(reg * 1000, 128);
}
