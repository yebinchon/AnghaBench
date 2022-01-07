
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u8 ;
struct picolcd_data {int addr_sz; } ;



__attribute__((used)) static int _picolcd_flash_setaddr(struct picolcd_data *data, u8 *buf, long off)
{
 buf[0] = off & 0xff;
 buf[1] = (off >> 8) & 0xff;
 if (data->addr_sz == 3)
  buf[2] = (off >> 16) & 0xff;
 return data->addr_sz == 2 ? 2 : 3;
}
