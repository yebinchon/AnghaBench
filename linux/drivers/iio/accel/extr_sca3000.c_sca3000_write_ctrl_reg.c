
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct sca3000_state {int dummy; } ;


 int SCA3000_REG_CTRL_DATA_ADDR ;
 int SCA3000_REG_CTRL_SEL_ADDR ;
 int __sca3000_unlock_reg_lock (struct sca3000_state*) ;
 int sca3000_reg_lock_on (struct sca3000_state*) ;
 int sca3000_write_reg (struct sca3000_state*,int ,int ) ;

__attribute__((used)) static int sca3000_write_ctrl_reg(struct sca3000_state *st,
      u8 sel,
      uint8_t val)
{
 int ret;

 ret = sca3000_reg_lock_on(st);
 if (ret < 0)
  goto error_ret;
 if (ret) {
  ret = __sca3000_unlock_reg_lock(st);
  if (ret)
   goto error_ret;
 }


 ret = sca3000_write_reg(st, SCA3000_REG_CTRL_SEL_ADDR, sel);
 if (ret)
  goto error_ret;


 ret = sca3000_write_reg(st, SCA3000_REG_CTRL_DATA_ADDR, val);

error_ret:
 return ret;
}
