
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 max31785_scale_pwm(u32 sensor_val)
{
 return (sensor_val * 100) / 255;
}
