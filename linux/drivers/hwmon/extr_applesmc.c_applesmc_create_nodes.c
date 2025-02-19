
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct attribute {int mode; int * name; } ;
struct applesmc_node_group {int option; scalar_t__ store; int show; scalar_t__ format; struct applesmc_dev_attr* nodes; } ;
struct TYPE_5__ {struct attribute attr; scalar_t__ store; int show; } ;
struct TYPE_6__ {int index; TYPE_1__ dev_attr; } ;
struct applesmc_dev_attr {int * name; TYPE_2__ sda; } ;
struct TYPE_7__ {int kobj; } ;
struct TYPE_8__ {TYPE_3__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int applesmc_destroy_nodes (struct applesmc_node_group*) ;
 struct applesmc_dev_attr* kcalloc (int,int,int ) ;
 TYPE_4__* pdev ;
 int scnprintf (int *,int,scalar_t__,int) ;
 int sysfs_attr_init (struct attribute*) ;
 int sysfs_create_file (int *,struct attribute*) ;

__attribute__((used)) static int applesmc_create_nodes(struct applesmc_node_group *groups, int num)
{
 struct applesmc_node_group *grp;
 struct applesmc_dev_attr *node;
 struct attribute *attr;
 int ret, i;

 for (grp = groups; grp->format; grp++) {
  grp->nodes = kcalloc(num + 1, sizeof(*node), GFP_KERNEL);
  if (!grp->nodes) {
   ret = -ENOMEM;
   goto out;
  }
  for (i = 0; i < num; i++) {
   node = &grp->nodes[i];
   scnprintf(node->name, sizeof(node->name), grp->format,
      i + 1);
   node->sda.index = (grp->option << 16) | (i & 0xffff);
   node->sda.dev_attr.show = grp->show;
   node->sda.dev_attr.store = grp->store;
   attr = &node->sda.dev_attr.attr;
   sysfs_attr_init(attr);
   attr->name = node->name;
   attr->mode = 0444 | (grp->store ? 0200 : 0);
   ret = sysfs_create_file(&pdev->dev.kobj, attr);
   if (ret) {
    attr->name = ((void*)0);
    goto out;
   }
  }
 }

 return 0;
out:
 applesmc_destroy_nodes(groups);
 return ret;
}
