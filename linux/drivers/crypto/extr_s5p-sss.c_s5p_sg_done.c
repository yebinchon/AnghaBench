
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_aes_reqctx {int mode; } ;
struct s5p_aes_dev {scalar_t__ aes_ioaddr; scalar_t__ sg_dst_cpy; scalar_t__ sg_src_cpy; struct ablkcipher_request* req; int dev; } ;
struct ablkcipher_request {int info; int nbytes; int dst; } ;


 int AES_BLOCK_SIZE ;
 int FLAGS_AES_CBC ;
 int FLAGS_AES_CTR ;
 scalar_t__ SSS_REG_AES_CNT_DATA (int ) ;
 scalar_t__ SSS_REG_AES_IV_DATA (int ) ;
 struct s5p_aes_reqctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int dev_dbg (int ,char*,int ) ;
 int memcpy_fromio (int ,scalar_t__,int ) ;
 int s5p_free_sg_cpy (struct s5p_aes_dev*,scalar_t__*) ;
 int s5p_sg_copy_buf (int ,int ,int ,int) ;
 int sg_virt (scalar_t__) ;

__attribute__((used)) static void s5p_sg_done(struct s5p_aes_dev *dev)
{
 struct ablkcipher_request *req = dev->req;
 struct s5p_aes_reqctx *reqctx = ablkcipher_request_ctx(req);

 if (dev->sg_dst_cpy) {
  dev_dbg(dev->dev,
   "Copying %d bytes of output data back to original place\n",
   dev->req->nbytes);
  s5p_sg_copy_buf(sg_virt(dev->sg_dst_cpy), dev->req->dst,
    dev->req->nbytes, 1);
 }
 s5p_free_sg_cpy(dev, &dev->sg_src_cpy);
 s5p_free_sg_cpy(dev, &dev->sg_dst_cpy);
 if (reqctx->mode & FLAGS_AES_CBC)
  memcpy_fromio(req->info, dev->aes_ioaddr + SSS_REG_AES_IV_DATA(0), AES_BLOCK_SIZE);

 else if (reqctx->mode & FLAGS_AES_CTR)
  memcpy_fromio(req->info, dev->aes_ioaddr + SSS_REG_AES_CNT_DATA(0), AES_BLOCK_SIZE);
}
