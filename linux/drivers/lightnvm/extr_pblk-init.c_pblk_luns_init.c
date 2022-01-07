
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_lun {int wr_sem; int bppa; } ;
struct pblk {struct pblk_lun* luns; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {scalar_t__ num_lun; int all_luns; int num_ch; } ;
struct nvm_tgt_dev {int * luns; struct nvm_geo geo; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct pblk_lun* kcalloc (int,int,int ) ;
 int pblk_err (struct pblk*,char*) ;
 int sema_init (int *,int) ;

__attribute__((used)) static int pblk_luns_init(struct pblk *pblk)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct nvm_geo *geo = &dev->geo;
 struct pblk_lun *rlun;
 int i;


 if (geo->num_lun < 0) {
  pblk_err(pblk, "unbalanced LUN config.\n");
  return -EINVAL;
 }

 pblk->luns = kcalloc(geo->all_luns, sizeof(struct pblk_lun),
        GFP_KERNEL);
 if (!pblk->luns)
  return -ENOMEM;

 for (i = 0; i < geo->all_luns; i++) {

  int ch = i % geo->num_ch;
  int lun_raw = i / geo->num_ch;
  int lunid = lun_raw + ch * geo->num_lun;

  rlun = &pblk->luns[i];
  rlun->bppa = dev->luns[lunid];

  sema_init(&rlun->wr_sem, 1);
 }

 return 0;
}
