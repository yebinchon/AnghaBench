
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t ch; size_t lun; } ;
struct ppa_addr {TYPE_1__ a; } ;
struct nvm_tgt_dev {struct nvm_dev_map* map; } ;
struct nvm_dev_map {struct nvm_ch_map* chnls; } ;
struct nvm_ch_map {int* lun_offs; scalar_t__ ch_off; } ;



__attribute__((used)) static void nvm_map_to_dev(struct nvm_tgt_dev *tgt_dev, struct ppa_addr *p)
{
 struct nvm_dev_map *dev_map = tgt_dev->map;
 struct nvm_ch_map *ch_map = &dev_map->chnls[p->a.ch];
 int lun_off = ch_map->lun_offs[p->a.lun];

 p->a.ch += ch_map->ch_off;
 p->a.lun += lun_off;
}
