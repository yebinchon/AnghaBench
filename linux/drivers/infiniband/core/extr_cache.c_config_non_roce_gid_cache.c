
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ib_gid_table {int lock; } ;
struct ib_gid_attr {int index; int gid; int port_num; struct ib_device* device; } ;
struct TYPE_2__ {int (* query_gid ) (struct ib_device*,int ,int,int *) ;} ;
struct ib_device {int dev; TYPE_1__ ops; } ;


 int add_modify_gid (struct ib_gid_table*,struct ib_gid_attr*) ;
 int dev_warn (int *,char*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ib_gid_table* rdma_gid_table (struct ib_device*,int ) ;
 int stub1 (struct ib_device*,int ,int,int *) ;

__attribute__((used)) static int config_non_roce_gid_cache(struct ib_device *device,
         u8 port, int gid_tbl_len)
{
 struct ib_gid_attr gid_attr = {};
 struct ib_gid_table *table;
 int ret = 0;
 int i;

 gid_attr.device = device;
 gid_attr.port_num = port;
 table = rdma_gid_table(device, port);

 mutex_lock(&table->lock);
 for (i = 0; i < gid_tbl_len; ++i) {
  if (!device->ops.query_gid)
   continue;
  ret = device->ops.query_gid(device, port, i, &gid_attr.gid);
  if (ret) {
   dev_warn(&device->dev,
     "query_gid failed (%d) for index %d\n", ret,
     i);
   goto err;
  }
  gid_attr.index = i;
  add_modify_gid(table, &gid_attr);
 }
err:
 mutex_unlock(&table->lock);
 return ret;
}
