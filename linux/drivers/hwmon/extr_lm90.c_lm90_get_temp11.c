
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm90_data {scalar_t__ kind; int * temp11; } ;
typedef int s16 ;


 scalar_t__ adt7461 ;
 scalar_t__ lm99 ;
 scalar_t__ max6646 ;
 int temp_from_s16 (int ) ;
 int temp_from_u16 (int ) ;
 int temp_from_u16_adt7461 (struct lm90_data*,int ) ;
 scalar_t__ tmp451 ;

__attribute__((used)) static int lm90_get_temp11(struct lm90_data *data, int index)
{
 s16 temp11 = data->temp11[index];
 int temp;

 if (data->kind == adt7461 || data->kind == tmp451)
  temp = temp_from_u16_adt7461(data, temp11);
 else if (data->kind == max6646)
  temp = temp_from_u16(temp11);
 else
  temp = temp_from_s16(temp11);


 if (data->kind == lm99 && index <= 2)
  temp += 16000;

 return temp;
}
