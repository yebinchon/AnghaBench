
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sca3000_state {int* rx; int lock; } ;


 int SCA3000_REG_INT_MASK_ADDR ;
 int SCA3000_REG_INT_MASK_ALL_INTS ;
 int SCA3000_REG_INT_MASK_RING_HALF ;
 int SCA3000_REG_INT_MASK_RING_THREE_QUARTER ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_read_data_short (struct sca3000_state*,int ,int) ;
 int sca3000_write_reg (struct sca3000_state*,int ,int) ;

__attribute__((used)) static int sca3000_stop_all_interrupts(struct sca3000_state *st)
{
 int ret;

 mutex_lock(&st->lock);
 ret = sca3000_read_data_short(st, SCA3000_REG_INT_MASK_ADDR, 1);
 if (ret)
  goto error_ret;
 ret = sca3000_write_reg(st, SCA3000_REG_INT_MASK_ADDR,
    (st->rx[0] &
     ~(SCA3000_REG_INT_MASK_RING_THREE_QUARTER |
       SCA3000_REG_INT_MASK_RING_HALF |
       SCA3000_REG_INT_MASK_ALL_INTS)));
error_ret:
 mutex_unlock(&st->lock);
 return ret;
}
