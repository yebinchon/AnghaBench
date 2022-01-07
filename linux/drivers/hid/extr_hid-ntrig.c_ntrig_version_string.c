
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int sprintf (char*,char*,int,int,int,int,int) ;

__attribute__((used)) static int ntrig_version_string(unsigned char *raw, char *buf)
{
 __u8 a = (raw[1] & 0x0e) >> 1;
 __u8 b = (raw[0] & 0x3c) >> 2;
 __u8 c = ((raw[0] & 0x03) << 3) | ((raw[3] & 0xe0) >> 5);
 __u8 d = ((raw[3] & 0x07) << 3) | ((raw[2] & 0xe0) >> 5);
 __u8 e = raw[2] & 0x07;






 return sprintf(buf, "%u.%u.%u.%u.%u", a, b, c, d, e);
}
