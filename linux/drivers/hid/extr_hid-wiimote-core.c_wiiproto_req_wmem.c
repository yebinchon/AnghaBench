
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int hdev; } ;
typedef int cmd ;
typedef int __u8 ;
typedef int __u32 ;


 int WIIPROTO_REQ_WMEM ;
 int hid_warn (int ,char*,int) ;
 int memcpy (int*,int const*,int) ;
 int memset (int*,int ,int) ;
 int wiimote_queue (struct wiimote_data*,int*,int) ;
 int wiiproto_keep_rumble (struct wiimote_data*,int*) ;

__attribute__((used)) static void wiiproto_req_wmem(struct wiimote_data *wdata, bool eeprom,
    __u32 offset, const __u8 *buf, __u8 size)
{
 __u8 cmd[22];

 if (size > 16 || size == 0) {
  hid_warn(wdata->hdev, "Invalid length %d wmem request\n", size);
  return;
 }

 memset(cmd, 0, sizeof(cmd));
 cmd[0] = WIIPROTO_REQ_WMEM;
 cmd[2] = (offset >> 16) & 0xff;
 cmd[3] = (offset >> 8) & 0xff;
 cmd[4] = offset & 0xff;
 cmd[5] = size;
 memcpy(&cmd[6], buf, size);

 if (!eeprom)
  cmd[1] |= 0x04;

 wiiproto_keep_rumble(wdata, &cmd[1]);
 wiimote_queue(wdata, cmd, sizeof(cmd));
}
