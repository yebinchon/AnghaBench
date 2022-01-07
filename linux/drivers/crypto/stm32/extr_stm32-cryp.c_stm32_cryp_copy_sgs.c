
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_cryp {int sgs_copied; int in_sg_len; int out_sg_len; int out_sgl; int * out_sg; int * out_sg_save; int in_sgl; int * in_sg; int total_in; int dev; int hw_blocksize; int total_out; } ;


 int ALIGN (int ,int ) ;
 int EFAULT ;
 int GFP_ATOMIC ;
 scalar_t__ __get_free_pages (int ,int) ;
 int dev_err (int ,char*) ;
 int get_order (int) ;
 int sg_copy_buf (void*,int *,int ,int ,int ) ;
 int sg_init_one (int *,void*,int) ;
 int stm32_cryp_check_io_aligned (struct stm32_cryp*) ;

__attribute__((used)) static int stm32_cryp_copy_sgs(struct stm32_cryp *cryp)
{
 void *buf_in, *buf_out;
 int pages, total_in, total_out;

 if (!stm32_cryp_check_io_aligned(cryp)) {
  cryp->sgs_copied = 0;
  return 0;
 }

 total_in = ALIGN(cryp->total_in, cryp->hw_blocksize);
 pages = total_in ? get_order(total_in) : 1;
 buf_in = (void *)__get_free_pages(GFP_ATOMIC, pages);

 total_out = ALIGN(cryp->total_out, cryp->hw_blocksize);
 pages = total_out ? get_order(total_out) : 1;
 buf_out = (void *)__get_free_pages(GFP_ATOMIC, pages);

 if (!buf_in || !buf_out) {
  dev_err(cryp->dev, "Can't allocate pages when unaligned\n");
  cryp->sgs_copied = 0;
  return -EFAULT;
 }

 sg_copy_buf(buf_in, cryp->in_sg, 0, cryp->total_in, 0);

 sg_init_one(&cryp->in_sgl, buf_in, total_in);
 cryp->in_sg = &cryp->in_sgl;
 cryp->in_sg_len = 1;

 sg_init_one(&cryp->out_sgl, buf_out, total_out);
 cryp->out_sg_save = cryp->out_sg;
 cryp->out_sg = &cryp->out_sgl;
 cryp->out_sg_len = 1;

 cryp->sgs_copied = 1;

 return 0;
}
