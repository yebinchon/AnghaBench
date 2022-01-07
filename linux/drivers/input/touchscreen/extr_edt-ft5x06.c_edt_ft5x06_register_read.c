
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct edt_ft5x06_ts_data {int version; TYPE_1__* client; int factory_mode; } ;
struct TYPE_2__ {int dev; } ;





 int EINVAL ;
 int EIO ;


 int dev_err (int *,char*,int,int) ;
 int edt_ft5x06_ts_readwrite (TYPE_1__*,int,int*,int,int*) ;

__attribute__((used)) static int edt_ft5x06_register_read(struct edt_ft5x06_ts_data *tsdata,
        u8 addr)
{
 u8 wrbuf[2], rdbuf[2];
 int error;

 switch (tsdata->version) {
 case 132:
  wrbuf[0] = tsdata->factory_mode ? 0xf3 : 0xfc;
  wrbuf[1] = tsdata->factory_mode ? addr & 0x7f : addr & 0x3f;
  wrbuf[1] |= tsdata->factory_mode ? 0x80 : 0x40;

  error = edt_ft5x06_ts_readwrite(tsdata->client, 2, wrbuf, 2,
      rdbuf);
  if (error)
   return error;

  if ((wrbuf[0] ^ wrbuf[1] ^ rdbuf[0]) != rdbuf[1]) {
   dev_err(&tsdata->client->dev,
    "crc error: 0x%02x expected, got 0x%02x\n",
    wrbuf[0] ^ wrbuf[1] ^ rdbuf[0],
    rdbuf[1]);
   return -EIO;
  }
  break;


 case 131:
 case 130:
 case 129:
 case 128:
  wrbuf[0] = addr;
  error = edt_ft5x06_ts_readwrite(tsdata->client, 1,
      wrbuf, 1, rdbuf);
  if (error)
   return error;
  break;

 default:
  return -EINVAL;
 }

 return rdbuf[0];
}
