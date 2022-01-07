
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct steam_device {int serial_no; } ;
typedef int reply ;
typedef int cmd ;


 int EIO ;
 int STEAM_CMD_GET_SERIAL ;
 int STEAM_SERIAL_LEN ;
 int steam_recv_report (struct steam_device*,int*,int) ;
 int steam_send_report (struct steam_device*,int*,int) ;
 int strlcpy (int ,int*,int) ;

__attribute__((used)) static int steam_get_serial(struct steam_device *steam)
{




 int ret;
 u8 cmd[] = {STEAM_CMD_GET_SERIAL, 0x15, 0x01};
 u8 reply[3 + STEAM_SERIAL_LEN + 1];

 ret = steam_send_report(steam, cmd, sizeof(cmd));
 if (ret < 0)
  return ret;
 ret = steam_recv_report(steam, reply, sizeof(reply));
 if (ret < 0)
  return ret;
 if (reply[0] != 0xae || reply[1] != 0x15 || reply[2] != 0x01)
  return -EIO;
 reply[3 + STEAM_SERIAL_LEN] = 0;
 strlcpy(steam->serial_no, reply + 3, sizeof(steam->serial_no));
 return 0;
}
