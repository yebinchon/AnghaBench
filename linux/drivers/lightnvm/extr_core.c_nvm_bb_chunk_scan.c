
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pg; int pl; } ;
struct ppa_addr {TYPE_1__ g; } ;
struct nvm_geo {int num_pg; int num_pln; scalar_t__ ws_min; int clba; } ;
struct nvm_dev {struct nvm_geo geo; } ;
struct nvm_chk_meta {int wp; void* state; } ;


 void* NVM_CHK_ST_CLOSED ;
 void* NVM_CHK_ST_FREE ;
 void* NVM_CHK_ST_OPEN ;




 int nvm_bb_chunk_sense (struct nvm_dev*,struct ppa_addr) ;

__attribute__((used)) static int nvm_bb_chunk_scan(struct nvm_dev *dev, struct ppa_addr ppa,
        struct nvm_chk_meta *meta)
{
 struct nvm_geo *geo = &dev->geo;
 int ret, pg, pl;


 ret = nvm_bb_chunk_sense(dev, ppa);
 if (ret < 0)
  return ret;
 else if (ret == 0)
  meta->state = NVM_CHK_ST_OPEN;
 else if (ret > 0) {




  switch (ret) {
  case 131:
   meta->state = NVM_CHK_ST_FREE;
   return 0;
  case 130:
  case 129:
  case 128:
   meta->state = NVM_CHK_ST_OPEN;
   goto scan;
  default:
   return -ret;
  }
 }


 ppa.g.pg = geo->num_pg - 1;
 ppa.g.pl = geo->num_pln - 1;

 ret = nvm_bb_chunk_sense(dev, ppa);
 if (ret < 0)
  return ret;
 else if (ret == 0) {
  meta->state = NVM_CHK_ST_CLOSED;
  meta->wp = geo->clba;
  return 0;
 } else if (ret > 0) {
  switch (ret) {
  case 131:
  case 130:
  case 129:
  case 128:
   meta->state = NVM_CHK_ST_OPEN;
   break;
  default:
   return -ret;
  }
 }

scan:





 for (pg = 0; pg < geo->num_pg; pg++) {
  for (pl = 0; pl < geo->num_pln; pl++) {
   ppa.g.pg = pg;
   ppa.g.pl = pl;

   ret = nvm_bb_chunk_sense(dev, ppa);
   if (ret < 0)
    return ret;
   else if (ret == 0) {
    meta->wp += geo->ws_min;
   } else if (ret > 0) {
    switch (ret) {
    case 131:
     return 0;
    case 130:
    case 129:
    case 128:
     meta->wp += geo->ws_min;
     break;
    default:
     return -ret;
    }
   }
  }
 }

 return 0;
}
