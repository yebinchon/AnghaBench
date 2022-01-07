
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GENMASK (int,int) ;
 int hweight8 (int) ;

__attribute__((used)) static u32 prepare_rr0_dev_address(u32 addr)
{
 u32 ret = (addr << 1) & 0xff;


 ret |= (addr & GENMASK(6, 0)) << 1;


 ret |= (addr & GENMASK(9, 7)) << 6;


 if (!(hweight8(addr & 0x7f) & 1))
  ret |= 1;

 return ret;
}
