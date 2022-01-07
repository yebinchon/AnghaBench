
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct icc_path {int num_nodes; TYPE_1__* reqs; } ;
struct TYPE_2__ {int tag; } ;


 int icc_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void icc_set_tag(struct icc_path *path, u32 tag)
{
 int i;

 if (!path)
  return;

 mutex_lock(&icc_lock);

 for (i = 0; i < path->num_nodes; i++)
  path->reqs[i].tag = tag;

 mutex_unlock(&icc_lock);
}
