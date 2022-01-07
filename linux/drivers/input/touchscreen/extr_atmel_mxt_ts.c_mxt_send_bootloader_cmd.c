
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxt_data {int dummy; } ;


 int MXT_UNLOCK_CMD_LSB ;
 int MXT_UNLOCK_CMD_MSB ;
 int mxt_bootloader_write (struct mxt_data*,int*,int) ;

__attribute__((used)) static int mxt_send_bootloader_cmd(struct mxt_data *data, bool unlock)
{
 int ret;
 u8 buf[2];

 if (unlock) {
  buf[0] = MXT_UNLOCK_CMD_LSB;
  buf[1] = MXT_UNLOCK_CMD_MSB;
 } else {
  buf[0] = 0x01;
  buf[1] = 0x01;
 }

 ret = mxt_bootloader_write(data, buf, 2);
 if (ret)
  return ret;

 return 0;
}
