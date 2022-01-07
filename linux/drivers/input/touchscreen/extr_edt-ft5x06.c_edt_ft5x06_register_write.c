
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct edt_ft5x06_ts_data {int version; int client; int factory_mode; } ;





 int EINVAL ;


 int edt_ft5x06_ts_readwrite (int ,int,int*,int ,int *) ;

__attribute__((used)) static int edt_ft5x06_register_write(struct edt_ft5x06_ts_data *tsdata,
         u8 addr, u8 value)
{
 u8 wrbuf[4];

 switch (tsdata->version) {
 case 132:
  wrbuf[0] = tsdata->factory_mode ? 0xf3 : 0xfc;
  wrbuf[1] = tsdata->factory_mode ? addr & 0x7f : addr & 0x3f;
  wrbuf[2] = value;
  wrbuf[3] = wrbuf[0] ^ wrbuf[1] ^ wrbuf[2];
  return edt_ft5x06_ts_readwrite(tsdata->client, 4,
     wrbuf, 0, ((void*)0));

 case 131:
 case 130:
 case 129:
 case 128:
  wrbuf[0] = addr;
  wrbuf[1] = value;

  return edt_ft5x06_ts_readwrite(tsdata->client, 2,
     wrbuf, 0, ((void*)0));

 default:
  return -EINVAL;
 }
}
