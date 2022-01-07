
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm63_data {int* temp8; scalar_t__ lut_temp_highres; } ;



__attribute__((used)) static inline int lut_temp_from_reg(struct lm63_data *data, int nr)
{
 return data->temp8[nr] * (data->lut_temp_highres ? 500 : 1000);
}
