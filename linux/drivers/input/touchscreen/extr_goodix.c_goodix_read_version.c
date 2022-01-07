
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct goodix_ts_data {int id; int version; TYPE_1__* client; } ;
typedef int buf ;
struct TYPE_2__ {int dev; } ;


 int GOODIX_REG_ID ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int,int ) ;
 int get_unaligned_le16 (int *) ;
 int goodix_i2c_read (TYPE_1__*,int ,int *,int) ;
 scalar_t__ kstrtou16 (char*,int,int*) ;
 int memcpy (char*,int *,int) ;

__attribute__((used)) static int goodix_read_version(struct goodix_ts_data *ts)
{
 int error;
 u8 buf[6];
 char id_str[5];

 error = goodix_i2c_read(ts->client, GOODIX_REG_ID, buf, sizeof(buf));
 if (error) {
  dev_err(&ts->client->dev, "read version failed: %d\n", error);
  return error;
 }

 memcpy(id_str, buf, 4);
 id_str[4] = 0;
 if (kstrtou16(id_str, 10, &ts->id))
  ts->id = 0x1001;

 ts->version = get_unaligned_le16(&buf[4]);

 dev_info(&ts->client->dev, "ID %d, version: %04x\n", ts->id,
   ts->version);

 return 0;
}
