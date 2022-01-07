
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct ib_device {int dummy; } ;



__attribute__((used)) static int i40iw_query_pkey(struct ib_device *ibdev,
       u8 port,
       u16 index,
       u16 *pkey)
{
 *pkey = 0;
 return 0;
}
