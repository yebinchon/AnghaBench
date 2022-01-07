
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_2__ {int max_i2c; } ;
struct cxd {scalar_t__ lastaddress; int regmap; TYPE_1__ cfg; scalar_t__* wbuf; } ;


 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int regmap_raw_write (int ,int,scalar_t__*,int) ;
 int regmap_write (int ,int ,scalar_t__) ;

__attribute__((used)) static int write_block(struct cxd *ci, u8 adr, u8 *data, u16 n)
{
 int status = 0;
 u8 *buf = ci->wbuf;

 if (ci->lastaddress != adr)
  status = regmap_write(ci->regmap, 0, adr);
 if (status)
  return status;

 ci->lastaddress = adr;
 while (n) {
  int len = n;

  if (ci->cfg.max_i2c && (len + 1 > ci->cfg.max_i2c))
   len = ci->cfg.max_i2c - 1;
  memcpy(buf, data, len);
  status = regmap_raw_write(ci->regmap, 1, buf, len);
  if (status)
   return status;
  n -= len;
  data += len;
 }
 return status;
}
