
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct icc_path {int num_nodes; TYPE_2__* reqs; } ;
struct icc_node {struct icc_node* reverse; int req_list; TYPE_1__* provider; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {struct device* dev; struct icc_node* node; int req_node; } ;
struct TYPE_3__ {int users; } ;


 int ENOMEM ;
 struct icc_path* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int hlist_add_head (int *,int *) ;
 struct icc_path* kzalloc (int ,int ) ;
 int reqs ;
 int struct_size (struct icc_path*,int ,int) ;

__attribute__((used)) static struct icc_path *path_init(struct device *dev, struct icc_node *dst,
      ssize_t num_nodes)
{
 struct icc_node *node = dst;
 struct icc_path *path;
 int i;

 path = kzalloc(struct_size(path, reqs, num_nodes), GFP_KERNEL);
 if (!path)
  return ERR_PTR(-ENOMEM);

 path->num_nodes = num_nodes;

 for (i = num_nodes - 1; i >= 0; i--) {
  node->provider->users++;
  hlist_add_head(&path->reqs[i].req_node, &node->req_list);
  path->reqs[i].node = node;
  path->reqs[i].dev = dev;

  node = node->reverse;
 }

 return path;
}
