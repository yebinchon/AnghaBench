
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {scalar_t__ ppa; } ;
struct pblk {struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int all_chunks; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct nvm_chk_meta {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 struct nvm_chk_meta* ERR_PTR (int ) ;
 int nvm_get_chunk_meta (struct nvm_tgt_dev*,struct ppa_addr,int,struct nvm_chk_meta*) ;
 int vfree (struct nvm_chk_meta*) ;
 struct nvm_chk_meta* vzalloc (unsigned long) ;

struct nvm_chk_meta *pblk_get_chunk_meta(struct pblk *pblk)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct nvm_geo *geo = &dev->geo;
 struct nvm_chk_meta *meta;
 struct ppa_addr ppa;
 unsigned long len;
 int ret;

 ppa.ppa = 0;

 len = geo->all_chunks * sizeof(*meta);
 meta = vzalloc(len);
 if (!meta)
  return ERR_PTR(-ENOMEM);

 ret = nvm_get_chunk_meta(dev, ppa, geo->all_chunks, meta);
 if (ret) {
  vfree(meta);
  return ERR_PTR(-EIO);
 }

 return meta;
}
