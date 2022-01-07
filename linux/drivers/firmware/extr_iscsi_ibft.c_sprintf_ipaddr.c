
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int ssize_t ;


 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t sprintf_ipaddr(char *buf, u8 *ip)
{
 char *str = buf;

 if (ip[0] == 0 && ip[1] == 0 && ip[2] == 0 && ip[3] == 0 &&
     ip[4] == 0 && ip[5] == 0 && ip[6] == 0 && ip[7] == 0 &&
     ip[8] == 0 && ip[9] == 0 && ip[10] == 0xff && ip[11] == 0xff) {



  str += sprintf(buf, "%pI4", ip + 12);
 } else {



  str += sprintf(str, "%pI6", ip);
 }
 str += sprintf(str, "\n");
 return str - buf;
}
