
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bmi160_data {int dummy; } ;


 int BMI160_ACCEL ;
 int BMI160_GYRO ;
 int bmi160_set_mode (struct bmi160_data*,int ,int) ;

__attribute__((used)) static void bmi160_chip_uninit(void *data)
{
 struct bmi160_data *bmi_data = data;

 bmi160_set_mode(bmi_data, BMI160_GYRO, 0);
 bmi160_set_mode(bmi_data, BMI160_ACCEL, 0);
}
