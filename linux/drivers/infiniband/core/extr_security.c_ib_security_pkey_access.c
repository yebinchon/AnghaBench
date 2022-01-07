
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct ib_device {int dummy; } ;


 int ib_get_cached_pkey (struct ib_device*,int ,int ,int *) ;
 int ib_get_cached_subnet_prefix (struct ib_device*,int ,int *) ;
 int rdma_protocol_ib (struct ib_device*,int ) ;
 int security_ib_pkey_access (void*,int ,int ) ;

__attribute__((used)) static int ib_security_pkey_access(struct ib_device *dev,
       u8 port_num,
       u16 pkey_index,
       void *sec)
{
 u64 subnet_prefix;
 u16 pkey;
 int ret;

 if (!rdma_protocol_ib(dev, port_num))
  return 0;

 ret = ib_get_cached_pkey(dev, port_num, pkey_index, &pkey);
 if (ret)
  return ret;

 ret = ib_get_cached_subnet_prefix(dev, port_num, &subnet_prefix);

 if (ret)
  return ret;

 return security_ib_pkey_access(sec, subnet_prefix, pkey);
}
