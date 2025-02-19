
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inv_mpu6050_state {int data_timestamp; int chip_period; } ;
typedef int s64 ;


 int INV_MPU6050_FREQ_DIVIDER (struct inv_mpu6050_state*) ;

__attribute__((used)) static s64 inv_mpu6050_get_timestamp(struct inv_mpu6050_state *st)
{
 s64 ts;


 ts = st->data_timestamp;
 st->data_timestamp += st->chip_period * INV_MPU6050_FREQ_DIVIDER(st);

 return ts;
}
