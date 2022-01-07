
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct page {int dummy; } ;
struct nvm_rq {int is_seq; int nr_ppas; int error; int ppa_addr; int opcode; struct bio* bio; int * member_0; } ;
struct nvm_dev {int dummy; } ;
struct bio_vec {int dummy; } ;
struct bio {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NVM_OP_PREAD ;
 int PAGE_SIZE ;
 int REQ_OP_READ ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int bio_add_page (struct bio*,struct page*,int ,int ) ;
 int bio_init (struct bio*,struct bio_vec*,int) ;
 int bio_set_op_attrs (struct bio*,int ,int ) ;
 int generic_to_dev_addr (struct nvm_dev*,struct ppa_addr) ;
 int nvm_submit_io_sync_raw (struct nvm_dev*,struct nvm_rq*) ;

__attribute__((used)) static int nvm_bb_chunk_sense(struct nvm_dev *dev, struct ppa_addr ppa)
{
 struct nvm_rq rqd = { ((void*)0) };
 struct bio bio;
 struct bio_vec bio_vec;
 struct page *page;
 int ret;

 page = alloc_page(GFP_KERNEL);
 if (!page)
  return -ENOMEM;

 bio_init(&bio, &bio_vec, 1);
 bio_add_page(&bio, page, PAGE_SIZE, 0);
 bio_set_op_attrs(&bio, REQ_OP_READ, 0);

 rqd.bio = &bio;
 rqd.opcode = NVM_OP_PREAD;
 rqd.is_seq = 1;
 rqd.nr_ppas = 1;
 rqd.ppa_addr = generic_to_dev_addr(dev, ppa);

 ret = nvm_submit_io_sync_raw(dev, &rqd);
 if (ret)
  return ret;

 __free_page(page);

 return rqd.error;
}
