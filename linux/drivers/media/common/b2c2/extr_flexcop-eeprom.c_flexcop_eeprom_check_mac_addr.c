
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int proposed_mac; } ;
struct flexcop_device {TYPE_1__ dvb_adapter; } ;


 int EINVAL ;
 int err (char*) ;
 int flexcop_eeprom_lrc_read (struct flexcop_device*,int,int *,int,int) ;
 int memcpy (int ,int *,int) ;

int flexcop_eeprom_check_mac_addr(struct flexcop_device *fc, int extended)
{
 u8 buf[8];
 int ret = 0;

 if ((ret = flexcop_eeprom_lrc_read(fc,0x3f8,buf,8,4)) == 0) {
  if (extended != 0) {
   err("TODO: extended (EUI64) MAC addresses aren't completely supported yet");
   ret = -EINVAL;
  } else
   memcpy(fc->dvb_adapter.proposed_mac,buf,6);
 }
 return ret;
}
