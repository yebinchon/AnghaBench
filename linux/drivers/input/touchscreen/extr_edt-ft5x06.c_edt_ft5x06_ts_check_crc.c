
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct edt_ft5x06_ts_data {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err_ratelimited (int *,char*,int ,int ) ;

__attribute__((used)) static bool edt_ft5x06_ts_check_crc(struct edt_ft5x06_ts_data *tsdata,
        u8 *buf, int buflen)
{
 int i;
 u8 crc = 0;

 for (i = 0; i < buflen - 1; i++)
  crc ^= buf[i];

 if (crc != buf[buflen-1]) {
  dev_err_ratelimited(&tsdata->client->dev,
        "crc error: 0x%02x expected, got 0x%02x\n",
        crc, buf[buflen-1]);
  return 0;
 }

 return 1;
}
