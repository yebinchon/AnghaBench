
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_gid_table_entry {int dummy; } ;
struct ib_gid_table {int * data_vec; } ;
struct ib_gid_attr {size_t index; int port_num; int device; int gid; } ;


 int ENOMEM ;
 int add_roce_gid (struct ib_gid_table_entry*) ;
 struct ib_gid_table_entry* alloc_gid_entry (struct ib_gid_attr const*) ;
 int del_gid (int ,int ,struct ib_gid_table*,size_t) ;
 scalar_t__ is_gid_entry_valid (int ) ;
 int put_gid_entry (struct ib_gid_table_entry*) ;
 scalar_t__ rdma_is_zero_gid (int *) ;
 scalar_t__ rdma_protocol_roce (int ,int ) ;
 int store_gid_entry (struct ib_gid_table*,struct ib_gid_table_entry*) ;

__attribute__((used)) static int add_modify_gid(struct ib_gid_table *table,
     const struct ib_gid_attr *attr)
{
 struct ib_gid_table_entry *entry;
 int ret = 0;





 if (is_gid_entry_valid(table->data_vec[attr->index]))
  del_gid(attr->device, attr->port_num, table, attr->index);






 if (rdma_is_zero_gid(&attr->gid))
  return 0;

 entry = alloc_gid_entry(attr);
 if (!entry)
  return -ENOMEM;

 if (rdma_protocol_roce(attr->device, attr->port_num)) {
  ret = add_roce_gid(entry);
  if (ret)
   goto done;
 }

 store_gid_entry(table, entry);
 return 0;

done:
 put_gid_entry(entry);
 return ret;
}
