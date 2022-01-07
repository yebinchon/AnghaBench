
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct cxd {int regmap; } ;


 int regmap_raw_read (int ,int,int*,int) ;
 int regmap_raw_write (int ,int,int*,int) ;

__attribute__((used)) static int read_pccard(struct cxd *ci, u16 address, u8 *data, u8 n)
{
 int status;
 u8 addr[2] = {address & 0xff, address >> 8};

 status = regmap_raw_write(ci->regmap, 2, addr, 2);
 if (!status)
  status = regmap_raw_read(ci->regmap, 3, data, n);
 return status;
}
