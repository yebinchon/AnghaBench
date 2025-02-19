
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cxd2880_tnrdmd {int dummy; } ;


 int EAGAIN ;
 int EINVAL ;
 int intlog10 (int) ;

__attribute__((used)) static int dvbt_calc_snr(struct cxd2880_tnrdmd *tnr_dmd,
    u32 reg_value, int *snr)
{
 if (!tnr_dmd || !snr)
  return -EINVAL;

 if (reg_value == 0)
  return -EAGAIN;

 if (reg_value > 4996)
  reg_value = 4996;

 *snr = intlog10(reg_value) - intlog10(5350 - reg_value);
 *snr = (*snr + 839) / 1678 + 28500;

 return 0;
}
