
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mxt_data {int bootloader_addr; TYPE_1__* client; TYPE_2__* info; } ;
struct TYPE_4__ {int family_id; } ;
struct TYPE_3__ {int addr; int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*,int) ;

__attribute__((used)) static int mxt_lookup_bootloader_address(struct mxt_data *data, bool retry)
{
 u8 appmode = data->client->addr;
 u8 bootloader;
 u8 family_id = data->info ? data->info->family_id : 0;

 switch (appmode) {
 case 0x4a:
 case 0x4b:

  if (retry || family_id >= 0xa2) {
   bootloader = appmode - 0x24;
   break;
  }

 case 0x4c:
 case 0x4d:
 case 0x5a:
 case 0x5b:
  bootloader = appmode - 0x26;
  break;

 default:
  dev_err(&data->client->dev,
   "Appmode i2c address 0x%02x not found\n",
   appmode);
  return -EINVAL;
 }

 data->bootloader_addr = bootloader;
 return 0;
}
