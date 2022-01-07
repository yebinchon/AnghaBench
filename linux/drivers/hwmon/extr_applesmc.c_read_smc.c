
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int APPLESMC_CMD_PORT ;
 int APPLESMC_DATA_PORT ;
 int APPLESMC_MIN_WAIT ;
 int EIO ;
 int inb (int ) ;
 int pr_warn (char*,...) ;
 scalar_t__ send_argument (char const*) ;
 scalar_t__ send_byte (int,int ) ;
 scalar_t__ send_command (int) ;
 int udelay (int ) ;
 scalar_t__ wait_read () ;

__attribute__((used)) static int read_smc(u8 cmd, const char *key, u8 *buffer, u8 len)
{
 u8 status, data = 0;
 int i;

 if (send_command(cmd) || send_argument(key)) {
  pr_warn("%.4s: read arg fail\n", key);
  return -EIO;
 }


 if (send_byte(len, APPLESMC_DATA_PORT)) {
  pr_warn("%.4s: read len fail\n", key);
  return -EIO;
 }

 for (i = 0; i < len; i++) {
  if (wait_read()) {
   pr_warn("%.4s: read data[%d] fail\n", key, i);
   return -EIO;
  }
  buffer[i] = inb(APPLESMC_DATA_PORT);
 }


 for (i = 0; i < 16; i++) {
  udelay(APPLESMC_MIN_WAIT);
  status = inb(APPLESMC_CMD_PORT);
  if (!(status & 0x01))
   break;
  data = inb(APPLESMC_DATA_PORT);
 }
 if (i)
  pr_warn("flushed %d bytes, last value is: %d\n", i, data);

 return 0;
}
