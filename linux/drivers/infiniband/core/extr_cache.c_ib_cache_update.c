
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct ib_port_attr {int pkey_tbl_len; int table_len; int subnet_prefix; int state; int lmc; scalar_t__ table; int gid_tbl_len; } ;
struct ib_pkey_cache {int pkey_tbl_len; int table_len; int subnet_prefix; int state; int lmc; scalar_t__ table; int gid_tbl_len; } ;
struct TYPE_6__ {int lock; } ;
struct ib_device {TYPE_3__ cache; TYPE_2__* port_data; int dev; } ;
struct TYPE_4__ {int subnet_prefix; int port_state; int lmc; struct ib_port_attr* pkey; } ;
struct TYPE_5__ {TYPE_1__ cache; } ;


 int GFP_KERNEL ;
 int config_non_roce_gid_cache (struct ib_device*,size_t,int ) ;
 int dev_warn (int *,char*,int,...) ;
 int ib_query_pkey (struct ib_device*,size_t,int,scalar_t__) ;
 int ib_query_port (struct ib_device*,size_t,struct ib_port_attr*) ;
 int ib_security_cache_change (struct ib_device*,size_t,int ) ;
 int kfree (struct ib_port_attr*) ;
 struct ib_port_attr* kmalloc (int,int ) ;
 int rdma_is_port_valid (struct ib_device*,size_t) ;
 int rdma_protocol_roce (struct ib_device*,size_t) ;
 int struct_size (struct ib_port_attr*,int ,int) ;
 int table ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static void ib_cache_update(struct ib_device *device,
       u8 port,
       bool enforce_security)
{
 struct ib_port_attr *tprops = ((void*)0);
 struct ib_pkey_cache *pkey_cache = ((void*)0), *old_pkey_cache;
 int i;
 int ret;

 if (!rdma_is_port_valid(device, port))
  return;

 tprops = kmalloc(sizeof *tprops, GFP_KERNEL);
 if (!tprops)
  return;

 ret = ib_query_port(device, port, tprops);
 if (ret) {
  dev_warn(&device->dev, "ib_query_port failed (%d)\n", ret);
  goto err;
 }

 if (!rdma_protocol_roce(device, port)) {
  ret = config_non_roce_gid_cache(device, port,
      tprops->gid_tbl_len);
  if (ret)
   goto err;
 }

 pkey_cache = kmalloc(struct_size(pkey_cache, table,
      tprops->pkey_tbl_len),
        GFP_KERNEL);
 if (!pkey_cache)
  goto err;

 pkey_cache->table_len = tprops->pkey_tbl_len;

 for (i = 0; i < pkey_cache->table_len; ++i) {
  ret = ib_query_pkey(device, port, i, pkey_cache->table + i);
  if (ret) {
   dev_warn(&device->dev,
     "ib_query_pkey failed (%d) for index %d\n",
     ret, i);
   goto err;
  }
 }

 write_lock_irq(&device->cache.lock);

 old_pkey_cache = device->port_data[port].cache.pkey;

 device->port_data[port].cache.pkey = pkey_cache;
 device->port_data[port].cache.lmc = tprops->lmc;
 device->port_data[port].cache.port_state = tprops->state;

 device->port_data[port].cache.subnet_prefix = tprops->subnet_prefix;
 write_unlock_irq(&device->cache.lock);

 if (enforce_security)
  ib_security_cache_change(device,
      port,
      tprops->subnet_prefix);

 kfree(old_pkey_cache);
 kfree(tprops);
 return;

err:
 kfree(pkey_cache);
 kfree(tprops);
}
