
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct coresight_node {int link; struct coresight_device* csdev; } ;
struct coresight_device {TYPE_2__* pdata; } ;
struct TYPE_4__ {int nr_outport; TYPE_1__* conns; } ;
struct TYPE_3__ {struct coresight_device* child_dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int coresight_grab_device (struct coresight_device*) ;
 struct coresight_node* kzalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;

__attribute__((used)) static int _coresight_build_path(struct coresight_device *csdev,
     struct coresight_device *sink,
     struct list_head *path)
{
 int i;
 bool found = 0;
 struct coresight_node *node;


 if (csdev == sink)
  goto out;


 for (i = 0; i < csdev->pdata->nr_outport; i++) {
  struct coresight_device *child_dev;

  child_dev = csdev->pdata->conns[i].child_dev;
  if (child_dev &&
      _coresight_build_path(child_dev, sink, path) == 0) {
   found = 1;
   break;
  }
 }

 if (!found)
  return -ENODEV;

out:






 node = kzalloc(sizeof(struct coresight_node), GFP_KERNEL);
 if (!node)
  return -ENOMEM;

 coresight_grab_device(csdev);
 node->csdev = csdev;
 list_add(&node->link, path);

 return 0;
}
