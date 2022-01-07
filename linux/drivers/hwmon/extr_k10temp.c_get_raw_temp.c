
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct k10temp_data {int temp_adjust_mask; int pdev; int (* read_tempreg ) (int ,int*) ;} ;


 int stub1 (int ,int*) ;

__attribute__((used)) static unsigned int get_raw_temp(struct k10temp_data *data)
{
 unsigned int temp;
 u32 regval;

 data->read_tempreg(data->pdev, &regval);
 temp = (regval >> 21) * 125;
 if (regval & data->temp_adjust_mask)
  temp -= 49000;
 return temp;
}
