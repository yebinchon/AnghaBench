
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;
struct coresight_dev_list {int nr_idx; struct fwnode_handle** fwnode_list; } ;


 int ENOENT ;

__attribute__((used)) static inline int coresight_search_device_idx(struct coresight_dev_list *dict,
           struct fwnode_handle *fwnode)
{
 int i;

 for (i = 0; i < dict->nr_idx; i++)
  if (dict->fwnode_list[i] == fwnode)
   return i;
 return -ENOENT;
}
