
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct octeon_i2c {int dev; scalar_t__ twsi_base; scalar_t__ hlc_enabled; } ;


 int EAGAIN ;
 int EIO ;
 int ENXIO ;
 int EOPNOTSUPP ;
 scalar_t__ SW_TWSI (struct octeon_i2c*) ;
 int __raw_readq (scalar_t__) ;
 int dev_err (int ,char*,int) ;
 int octeon_i2c_stat_read (struct octeon_i2c*) ;

__attribute__((used)) static int octeon_i2c_check_status(struct octeon_i2c *i2c, int final_read)
{
 u8 stat;





 if (i2c->hlc_enabled)
  stat = __raw_readq(i2c->twsi_base + SW_TWSI(i2c));
 else
  stat = octeon_i2c_stat_read(i2c);

 switch (stat) {

 case 149:
 case 154:
 case 144:
 case 131:
 case 129:
  return 0;


 case 142:
  if (!final_read)
   return 0;
  return -EIO;


 case 141:
  if (final_read)
   return 0;
  return -EIO;


 case 148:
 case 147:
 case 146:
 case 145:
  return -EAGAIN;


 case 140:
 case 139:
 case 151:
 case 150:
  return -EOPNOTSUPP;


 case 138:
 case 137:
 case 136:
 case 135:
 case 133:
 case 132:
 case 134:
  return -EOPNOTSUPP;

 case 128:
 case 152:
  return -EIO;
 case 130:
 case 143:
 case 153:
  return -ENXIO;
 default:
  dev_err(i2c->dev, "unhandled state: %d\n", stat);
  return -EIO;
 }
}
