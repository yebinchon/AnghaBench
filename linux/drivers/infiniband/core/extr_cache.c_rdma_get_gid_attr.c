
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ib_gid_table {int sz; int rwlock; TYPE_1__** data_vec; } ;
struct ib_gid_attr {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {struct ib_gid_attr attr; } ;


 int EINVAL ;
 struct ib_gid_attr const* ERR_PTR (int ) ;
 int get_gid_entry (TYPE_1__*) ;
 int is_gid_entry_valid (TYPE_1__*) ;
 struct ib_gid_table* rdma_gid_table (struct ib_device*,int ) ;
 int rdma_is_port_valid (struct ib_device*,int ) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

const struct ib_gid_attr *
rdma_get_gid_attr(struct ib_device *device, u8 port_num, int index)
{
 const struct ib_gid_attr *attr = ERR_PTR(-EINVAL);
 struct ib_gid_table *table;
 unsigned long flags;

 if (!rdma_is_port_valid(device, port_num))
  return ERR_PTR(-EINVAL);

 table = rdma_gid_table(device, port_num);
 if (index < 0 || index >= table->sz)
  return ERR_PTR(-EINVAL);

 read_lock_irqsave(&table->rwlock, flags);
 if (!is_gid_entry_valid(table->data_vec[index]))
  goto done;

 get_gid_entry(table->data_vec[index]);
 attr = &table->data_vec[index]->attr;
done:
 read_unlock_irqrestore(&table->rwlock, flags);
 return attr;
}
