
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_2__ {int max_i2c; } ;
struct cxd {scalar_t__ lastaddress; int regmap; TYPE_1__ cfg; } ;


 int regmap_raw_read (int ,int,scalar_t__*,int) ;
 int regmap_write (int ,int ,scalar_t__) ;

__attribute__((used)) static int read_block(struct cxd *ci, u8 adr, u8 *data, u16 n)
{
 int status = 0;

 if (ci->lastaddress != adr)
  status = regmap_write(ci->regmap, 0, adr);
 if (!status) {
  ci->lastaddress = adr;

  while (n) {
   int len = n;

   if (ci->cfg.max_i2c && len > ci->cfg.max_i2c)
    len = ci->cfg.max_i2c;
   status = regmap_raw_read(ci->regmap, 1, data, len);
   if (status)
    return status;
   data += len;
   n -= len;
  }
 }
 return status;
}
