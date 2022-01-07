
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ib_device {int dummy; } ;


 int PKEY_ID ;

__attribute__((used)) static int hns_roce_query_pkey(struct ib_device *ib_dev, u8 port, u16 index,
          u16 *pkey)
{
 *pkey = PKEY_ID;

 return 0;
}
