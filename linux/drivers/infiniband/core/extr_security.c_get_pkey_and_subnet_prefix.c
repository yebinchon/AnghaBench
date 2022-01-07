
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct ib_port_pkey {int port_num; int pkey_index; TYPE_1__* sec; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {struct ib_device* dev; } ;


 int ib_get_cached_pkey (struct ib_device*,int ,int ,int *) ;
 int ib_get_cached_subnet_prefix (struct ib_device*,int ,int *) ;

__attribute__((used)) static int get_pkey_and_subnet_prefix(struct ib_port_pkey *pp,
          u16 *pkey,
          u64 *subnet_prefix)
{
 struct ib_device *dev = pp->sec->dev;
 int ret;

 ret = ib_get_cached_pkey(dev, pp->port_num, pp->pkey_index, pkey);
 if (ret)
  return ret;

 ret = ib_get_cached_subnet_prefix(dev, pp->port_num, subnet_prefix);

 return ret;
}
