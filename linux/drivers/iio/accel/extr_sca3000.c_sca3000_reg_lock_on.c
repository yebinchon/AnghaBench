
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sca3000_state {int* rx; } ;


 int SCA3000_LOCKED ;
 int SCA3000_REG_STATUS_ADDR ;
 int sca3000_read_data_short (struct sca3000_state*,int ,int) ;

__attribute__((used)) static int sca3000_reg_lock_on(struct sca3000_state *st)
{
 int ret;

 ret = sca3000_read_data_short(st, SCA3000_REG_STATUS_ADDR, 1);
 if (ret < 0)
  return ret;

 return !(st->rx[0] & SCA3000_LOCKED);
}
