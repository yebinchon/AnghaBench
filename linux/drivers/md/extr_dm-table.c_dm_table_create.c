
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct dm_table {struct mapped_device* md; int mode; int type; int target_callbacks; int devices; } ;
typedef int fmode_t ;


 int DM_TYPE_NONE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int KEYS_PER_NODE ;
 scalar_t__ alloc_targets (struct dm_table*,unsigned int) ;
 unsigned int dm_round_up (unsigned int,unsigned int) ;
 int kfree (struct dm_table*) ;
 struct dm_table* kzalloc (int,int ) ;

int dm_table_create(struct dm_table **result, fmode_t mode,
      unsigned num_targets, struct mapped_device *md)
{
 struct dm_table *t = kzalloc(sizeof(*t), GFP_KERNEL);

 if (!t)
  return -ENOMEM;

 INIT_LIST_HEAD(&t->devices);
 INIT_LIST_HEAD(&t->target_callbacks);

 if (!num_targets)
  num_targets = KEYS_PER_NODE;

 num_targets = dm_round_up(num_targets, KEYS_PER_NODE);

 if (!num_targets) {
  kfree(t);
  return -ENOMEM;
 }

 if (alloc_targets(t, num_targets)) {
  kfree(t);
  return -ENOMEM;
 }

 t->type = DM_TYPE_NONE;
 t->mode = mode;
 t->md = md;
 *result = t;
 return 0;
}
