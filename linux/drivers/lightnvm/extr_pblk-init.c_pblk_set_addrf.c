
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int uaddrf; int addrf; int addrf_len; int min_write_pgs; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int version; int clba; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;


 int EINVAL ;


 int div_u64_rem (int ,int ,int*) ;
 int pblk_err (struct pblk*,char*,...) ;
 int pblk_set_addrf_12 (struct pblk*,struct nvm_geo*,void*) ;
 int pblk_set_addrf_20 (struct nvm_geo*,void*,int *) ;

__attribute__((used)) static int pblk_set_addrf(struct pblk *pblk)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct nvm_geo *geo = &dev->geo;
 int mod;

 switch (geo->version) {
 case 129:
  div_u64_rem(geo->clba, pblk->min_write_pgs, &mod);
  if (mod) {
   pblk_err(pblk, "bad configuration of sectors/pages\n");
   return -EINVAL;
  }

  pblk->addrf_len = pblk_set_addrf_12(pblk, geo,
       (void *)&pblk->addrf);
  break;
 case 128:
  pblk->addrf_len = pblk_set_addrf_20(geo, (void *)&pblk->addrf,
       &pblk->uaddrf);
  break;
 default:
  pblk_err(pblk, "OCSSD revision not supported (%d)\n",
        geo->version);
  return -EINVAL;
 }

 return 0;
}
