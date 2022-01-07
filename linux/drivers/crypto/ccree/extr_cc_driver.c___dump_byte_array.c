
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int prefix ;


 int DUMP_PREFIX_ADDRESS ;
 int KERN_DEBUG ;
 int print_hex_dump (int ,char*,int ,int,int,int const*,size_t,int) ;
 int snprintf (char*,int,char*,char const*,size_t) ;

void __dump_byte_array(const char *name, const u8 *buf, size_t len)
{
 char prefix[64];

 if (!buf)
  return;

 snprintf(prefix, sizeof(prefix), "%s[%zu]: ", name, len);

 print_hex_dump(KERN_DEBUG, prefix, DUMP_PREFIX_ADDRESS, 16, 1, buf,
         len, 0);
}
