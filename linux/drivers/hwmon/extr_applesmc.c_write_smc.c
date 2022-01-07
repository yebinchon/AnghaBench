
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int APPLESMC_DATA_PORT ;
 int EIO ;
 int pr_warn (char*,char const*) ;
 scalar_t__ send_argument (char const*) ;
 scalar_t__ send_byte (int const,int ) ;
 scalar_t__ send_command (int) ;

__attribute__((used)) static int write_smc(u8 cmd, const char *key, const u8 *buffer, u8 len)
{
 int i;

 if (send_command(cmd) || send_argument(key)) {
  pr_warn("%s: write arg fail\n", key);
  return -EIO;
 }

 if (send_byte(len, APPLESMC_DATA_PORT)) {
  pr_warn("%.4s: write len fail\n", key);
  return -EIO;
 }

 for (i = 0; i < len; i++) {
  if (send_byte(buffer[i], APPLESMC_DATA_PORT)) {
   pr_warn("%s: write data fail\n", key);
   return -EIO;
  }
 }

 return 0;
}
