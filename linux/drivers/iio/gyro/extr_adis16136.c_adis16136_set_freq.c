
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adis16136 {int adis; } ;


 int ADIS16136_REG_SMPL_PRD ;
 int adis_write_reg_16 (int *,int ,unsigned int) ;

__attribute__((used)) static int adis16136_set_freq(struct adis16136 *adis16136, unsigned int freq)
{
 unsigned int t;

 t = 32768 / freq;
 if (t < 0xf)
  t = 0xf;
 else if (t > 0xffff)
  t = 0xffff;
 else
  t--;

 return adis_write_reg_16(&adis16136->adis, ADIS16136_REG_SMPL_PRD, t);
}
