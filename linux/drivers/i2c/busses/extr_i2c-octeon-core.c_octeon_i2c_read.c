
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct octeon_i2c {int dummy; } ;


 int EPROTO ;
 scalar_t__ I2C_SMBUS_BLOCK_MAX ;
 int TWSI_CTL_AAK ;
 int TWSI_CTL_ENAB ;
 int octeon_i2c_check_status (struct octeon_i2c*,int) ;
 int octeon_i2c_ctl_write (struct octeon_i2c*,int) ;
 scalar_t__ octeon_i2c_data_read (struct octeon_i2c*,int*) ;
 int octeon_i2c_data_write (struct octeon_i2c*,int) ;
 int octeon_i2c_wait (struct octeon_i2c*) ;

__attribute__((used)) static int octeon_i2c_read(struct octeon_i2c *i2c, int target,
      u8 *data, u16 *rlength, bool recv_len)
{
 int i, result, length = *rlength;
 bool final_read = 0;

 octeon_i2c_data_write(i2c, (target << 1) | 1);
 octeon_i2c_ctl_write(i2c, TWSI_CTL_ENAB);

 result = octeon_i2c_wait(i2c);
 if (result)
  return result;


 result = octeon_i2c_check_status(i2c, 0);
 if (result)
  return result;

 for (i = 0; i < length; i++) {
  if ((i + 1 == length) && !(recv_len && i == 0))
   final_read = 1;


  if (final_read)
   octeon_i2c_ctl_write(i2c, TWSI_CTL_ENAB);
  else
   octeon_i2c_ctl_write(i2c, TWSI_CTL_ENAB | TWSI_CTL_AAK);

  result = octeon_i2c_wait(i2c);
  if (result)
   return result;

  data[i] = octeon_i2c_data_read(i2c, &result);
  if (result)
   return result;
  if (recv_len && i == 0) {
   if (data[i] > I2C_SMBUS_BLOCK_MAX + 1)
    return -EPROTO;
   length += data[i];
  }

  result = octeon_i2c_check_status(i2c, final_read);
  if (result)
   return result;
 }
 *rlength = length;
 return 0;
}
