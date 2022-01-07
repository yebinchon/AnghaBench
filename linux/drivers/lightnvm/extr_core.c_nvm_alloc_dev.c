
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvm_dev {int ref; } ;


 int GFP_KERNEL ;
 int kref_init (int *) ;
 struct nvm_dev* kzalloc_node (int,int ,int) ;

struct nvm_dev *nvm_alloc_dev(int node)
{
 struct nvm_dev *dev;

 dev = kzalloc_node(sizeof(struct nvm_dev), GFP_KERNEL, node);
 if (dev)
  kref_init(&dev->ref);

 return dev;
}
