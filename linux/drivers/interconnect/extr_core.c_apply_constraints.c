
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct icc_path {int num_nodes; TYPE_2__* reqs; } ;
struct icc_node {TYPE_1__* provider; } ;
struct TYPE_4__ {struct icc_node* node; } ;
struct TYPE_3__ {int (* set ) (struct icc_node*,struct icc_node*) ;} ;


 int EINVAL ;
 int stub1 (struct icc_node*,struct icc_node*) ;

__attribute__((used)) static int apply_constraints(struct icc_path *path)
{
 struct icc_node *next, *prev = ((void*)0);
 int ret = -EINVAL;
 int i;

 for (i = 0; i < path->num_nodes; i++) {
  next = path->reqs[i].node;





  if (!prev || next->provider != prev->provider) {
   prev = next;
   continue;
  }


  ret = next->provider->set(prev, next);
  if (ret)
   goto out;

  prev = next;
 }
out:
 return ret;
}
