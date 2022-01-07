
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DAC_LIMIT (int) ;
 int clamp_val (int,int ,int) ;

__attribute__((used)) static int dac_to_pwm(int dac, bool v12)
{




 return clamp_val(255 - (255 * dac) / DAC_LIMIT(v12), 0, 255);
}
