
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mpu3050 {int lpf; int divisor; } ;
typedef enum mpu3050_lpf { ____Placeholder_mpu3050_lpf } mpu3050_lpf ;


 int LPF_256_HZ_NOLPF ;
 int mpu3050_start_sampling (struct mpu3050*) ;

__attribute__((used)) static int mpu3050_set_8khz_samplerate(struct mpu3050 *mpu3050)
{
 int ret;
 u8 divisor;
 enum mpu3050_lpf lpf;

 lpf = mpu3050->lpf;
 divisor = mpu3050->divisor;

 mpu3050->lpf = LPF_256_HZ_NOLPF;
 mpu3050->divisor = 0;
 ret = mpu3050_start_sampling(mpu3050);

 mpu3050->lpf = lpf;
 mpu3050->divisor = divisor;

 return ret;
}
