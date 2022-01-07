
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvm_dev_map {struct nvm_dev_map* chnls; struct nvm_dev_map* lun_offs; } ;
struct TYPE_2__ {int num_ch; } ;
struct nvm_dev {TYPE_1__ geo; struct nvm_dev_map* rmap; } ;


 int kfree (struct nvm_dev_map*) ;

__attribute__((used)) static void nvm_unregister_map(struct nvm_dev *dev)
{
 struct nvm_dev_map *rmap = dev->rmap;
 int i;

 for (i = 0; i < dev->geo.num_ch; i++)
  kfree(rmap->chnls[i].lun_offs);

 kfree(rmap->chnls);
 kfree(rmap);
}
