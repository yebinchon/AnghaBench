
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; scalar_t__ len; } ;


 int EINVAL ;
 int I2C_M_RD ;
 scalar_t__ SERIALI2C_HDR_SIZE ;
 size_t TEGRA_I2C_IPC_MAX_IN_BUF_SIZE ;
 size_t TEGRA_I2C_IPC_MAX_OUT_BUF_SIZE ;

__attribute__((used)) static int tegra_bpmp_i2c_msg_len_check(struct i2c_msg *msgs, unsigned int num)
{
 size_t tx_len = 0, rx_len = 0;
 unsigned int i;

 for (i = 0; i < num; i++)
  if (!(msgs[i].flags & I2C_M_RD))
   tx_len += SERIALI2C_HDR_SIZE + msgs[i].len;

 if (tx_len > TEGRA_I2C_IPC_MAX_IN_BUF_SIZE)
  return -EINVAL;

 for (i = 0; i < num; i++)
  if ((msgs[i].flags & I2C_M_RD))
   rx_len += msgs[i].len;

 if (rx_len > TEGRA_I2C_IPC_MAX_OUT_BUF_SIZE)
  return -EINVAL;

 return 0;
}
