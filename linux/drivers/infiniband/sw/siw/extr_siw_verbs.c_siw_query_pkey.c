
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ib_device {int dummy; } ;



int siw_query_pkey(struct ib_device *base_dev, u8 port, u16 idx, u16 *pkey)
{

 *pkey = 0xffff;
 return 0;
}
