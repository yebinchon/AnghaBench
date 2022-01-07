
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm90_data {scalar_t__ kind; int * temp8; } ;
typedef int s8 ;


 scalar_t__ adt7461 ;
 scalar_t__ lm99 ;
 scalar_t__ max6646 ;
 int temp_from_s8 (int ) ;
 int temp_from_u8 (int ) ;
 int temp_from_u8_adt7461 (struct lm90_data*,int ) ;
 scalar_t__ tmp451 ;

__attribute__((used)) static int lm90_get_temp8(struct lm90_data *data, int index)
{
 s8 temp8 = data->temp8[index];
 int temp;

 if (data->kind == adt7461 || data->kind == tmp451)
  temp = temp_from_u8_adt7461(data, temp8);
 else if (data->kind == max6646)
  temp = temp_from_u8(temp8);
 else
  temp = temp_from_s8(temp8);


 if (data->kind == lm99 && index == 3)
  temp += 16000;

 return temp;
}
