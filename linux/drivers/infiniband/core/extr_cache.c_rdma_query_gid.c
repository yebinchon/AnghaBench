
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct ib_gid_table {int sz; int rwlock; TYPE_2__** data_vec; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int gid; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;


 int EINVAL ;
 int is_gid_entry_valid (TYPE_2__*) ;
 int memcpy (union ib_gid*,int *,int) ;
 struct ib_gid_table* rdma_gid_table (struct ib_device*,int ) ;
 int rdma_is_port_valid (struct ib_device*,int ) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

int rdma_query_gid(struct ib_device *device, u8 port_num,
     int index, union ib_gid *gid)
{
 struct ib_gid_table *table;
 unsigned long flags;
 int res = -EINVAL;

 if (!rdma_is_port_valid(device, port_num))
  return -EINVAL;

 table = rdma_gid_table(device, port_num);
 read_lock_irqsave(&table->rwlock, flags);

 if (index < 0 || index >= table->sz ||
     !is_gid_entry_valid(table->data_vec[index]))
  goto done;

 memcpy(gid, &table->data_vec[index]->attr.gid, sizeof(*gid));
 res = 0;

done:
 read_unlock_irqrestore(&table->rwlock, flags);
 return res;
}
