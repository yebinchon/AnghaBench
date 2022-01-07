
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bpmp_i2c {int dummy; } ;
struct TYPE_2__ {size_t data_size; char* data_buf; } ;
struct mrq_i2c_response {TYPE_1__ xfer; } ;
struct i2c_msg {int flags; scalar_t__ len; int buf; } ;


 int EINVAL ;
 int I2C_M_RD ;
 int memcpy (int ,char*,scalar_t__) ;

__attribute__((used)) static int tegra_bpmp_i2c_deserialize(struct tegra_bpmp_i2c *i2c,
          struct mrq_i2c_response *response,
          struct i2c_msg *msgs,
          unsigned int num)
{
 size_t size = response->xfer.data_size, len = 0, pos = 0;
 char *buf = response->xfer.data_buf;
 unsigned int i;

 for (i = 0; i < num; i++)
  if (msgs[i].flags & I2C_M_RD)
   len += msgs[i].len;

 if (len != size)
  return -EINVAL;

 for (i = 0; i < num; i++) {
  if (msgs[i].flags & I2C_M_RD) {
   memcpy(msgs[i].buf, buf + pos, msgs[i].len);
   pos += msgs[i].len;
  }
 }

 return 0;
}
