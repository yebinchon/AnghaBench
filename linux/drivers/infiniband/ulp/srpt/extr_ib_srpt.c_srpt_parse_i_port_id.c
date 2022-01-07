
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;
 int hex2bin (int *,char const*,unsigned int) ;
 int memset (int *,int ,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

__attribute__((used)) static int srpt_parse_i_port_id(u8 i_port_id[16], const char *name)
{
 const char *p;
 unsigned len, count, leading_zero_bytes;
 int ret;

 p = name;
 if (strncasecmp(p, "0x", 2) == 0)
  p += 2;
 ret = -EINVAL;
 len = strlen(p);
 if (len % 2)
  goto out;
 count = min(len / 2, 16U);
 leading_zero_bytes = 16 - count;
 memset(i_port_id, 0, leading_zero_bytes);
 ret = hex2bin(i_port_id + leading_zero_bytes, p, count);

out:
 return ret;
}
