
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct adis16136 {int adis; } ;


 int ADIS16136_REG_SMPL_PRD ;
 int adis_read_reg_16 (int *,int ,int*) ;

__attribute__((used)) static int adis16136_get_freq(struct adis16136 *adis16136, unsigned int *freq)
{
 uint16_t t;
 int ret;

 ret = adis_read_reg_16(&adis16136->adis, ADIS16136_REG_SMPL_PRD, &t);
 if (ret < 0)
  return ret;

 *freq = 32768 / (t + 1);

 return 0;
}
