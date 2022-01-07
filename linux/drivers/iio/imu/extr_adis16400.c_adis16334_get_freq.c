
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct adis16400_state {int adis; } ;


 int ADIS16334_RATE_DIV_SHIFT ;
 int ADIS16400_SMPL_PRD ;
 int adis_read_reg_16 (int *,int ,int*) ;

__attribute__((used)) static int adis16334_get_freq(struct adis16400_state *st)
{
 int ret;
 uint16_t t;

 ret = adis_read_reg_16(&st->adis, ADIS16400_SMPL_PRD, &t);
 if (ret < 0)
  return ret;

 t >>= ADIS16334_RATE_DIV_SHIFT;

 return 819200 >> t;
}
