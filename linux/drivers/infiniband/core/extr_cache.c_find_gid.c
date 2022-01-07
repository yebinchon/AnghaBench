
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
struct ib_gid_attr {scalar_t__ gid_type; scalar_t__ ndev; int gid; } ;
struct ib_gid_table_entry {struct ib_gid_attr attr; } ;
struct ib_gid_table {int sz; struct ib_gid_table_entry** data_vec; } ;


 unsigned long GID_ATTR_FIND_MASK_DEFAULT ;
 unsigned long GID_ATTR_FIND_MASK_GID ;
 unsigned long GID_ATTR_FIND_MASK_GID_TYPE ;
 unsigned long GID_ATTR_FIND_MASK_NETDEV ;
 scalar_t__ is_gid_entry_free (struct ib_gid_table_entry*) ;
 int is_gid_entry_valid (struct ib_gid_table_entry*) ;
 int is_gid_index_default (struct ib_gid_table*,int) ;
 scalar_t__ memcmp (union ib_gid const*,int *,int) ;

__attribute__((used)) static int find_gid(struct ib_gid_table *table, const union ib_gid *gid,
      const struct ib_gid_attr *val, bool default_gid,
      unsigned long mask, int *pempty)
{
 int i = 0;
 int found = -1;
 int empty = pempty ? -1 : 0;

 while (i < table->sz && (found < 0 || empty < 0)) {
  struct ib_gid_table_entry *data = table->data_vec[i];
  struct ib_gid_attr *attr;
  int curr_index = i;

  i++;






  if (pempty && empty < 0) {
   if (is_gid_entry_free(data) &&
       default_gid ==
    is_gid_index_default(table, curr_index)) {
    empty = curr_index;
   }
  }







  if (!is_gid_entry_valid(data))
   continue;

  if (found >= 0)
   continue;

  attr = &data->attr;
  if (mask & GID_ATTR_FIND_MASK_GID_TYPE &&
      attr->gid_type != val->gid_type)
   continue;

  if (mask & GID_ATTR_FIND_MASK_GID &&
      memcmp(gid, &data->attr.gid, sizeof(*gid)))
   continue;

  if (mask & GID_ATTR_FIND_MASK_NETDEV &&
      attr->ndev != val->ndev)
   continue;

  if (mask & GID_ATTR_FIND_MASK_DEFAULT &&
      is_gid_index_default(table, curr_index) != default_gid)
   continue;

  found = curr_index;
 }

 if (pempty)
  *pempty = empty;

 return found;
}
