
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 scalar_t__ QEDR_ROCE_PKEY_DEFAULT ;
 scalar_t__ QEDR_ROCE_PKEY_TABLE_LEN ;

int qedr_query_pkey(struct ib_device *ibdev, u8 port, u16 index, u16 *pkey)
{
 if (index >= QEDR_ROCE_PKEY_TABLE_LEN)
  return -EINVAL;

 *pkey = QEDR_ROCE_PKEY_DEFAULT;
 return 0;
}
