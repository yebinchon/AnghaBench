
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;
struct coresight_dev_list {int nr_idx; int pfx; struct fwnode_handle** fwnode_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ ZERO_OR_NULL_PTR (struct fwnode_handle**) ;
 int coresight_mutex ;
 int coresight_search_device_idx (struct coresight_dev_list*,struct fwnode_handle*) ;
 struct fwnode_handle* dev_fwnode (struct device*) ;
 char* devm_kasprintf (struct device*,int ,char*,int ,int) ;
 struct fwnode_handle** krealloc (struct fwnode_handle**,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

char *coresight_alloc_device_name(struct coresight_dev_list *dict,
      struct device *dev)
{
 int idx;
 char *name = ((void*)0);
 struct fwnode_handle **list;

 mutex_lock(&coresight_mutex);

 idx = coresight_search_device_idx(dict, dev_fwnode(dev));
 if (idx < 0) {

  idx = dict->nr_idx;
  list = krealloc(dict->fwnode_list,
    (idx + 1) * sizeof(*dict->fwnode_list),
    GFP_KERNEL);
  if (ZERO_OR_NULL_PTR(list)) {
   idx = -ENOMEM;
   goto done;
  }

  list[idx] = dev_fwnode(dev);
  dict->fwnode_list = list;
  dict->nr_idx = idx + 1;
 }

 name = devm_kasprintf(dev, GFP_KERNEL, "%s%d", dict->pfx, idx);
done:
 mutex_unlock(&coresight_mutex);
 return name;
}
