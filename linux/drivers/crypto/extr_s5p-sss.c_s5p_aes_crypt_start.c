
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct s5p_aes_dev {int busy; int lock; int sg_dst; int sg_src; TYPE_1__* ctx; struct ablkcipher_request* req; } ;
struct ablkcipher_request {int * info; } ;
struct TYPE_2__ {scalar_t__ keylen; int aes_key; } ;


 int AES_CONTROL ;
 scalar_t__ AES_KEYSIZE_192 ;
 scalar_t__ AES_KEYSIZE_256 ;
 int FCFIFOCTRL ;
 int FCINTENCLR ;
 int FCINTENSET ;
 unsigned long FLAGS_AES_CBC ;
 unsigned long FLAGS_AES_CTR ;
 unsigned long FLAGS_AES_DECRYPT ;
 unsigned long FLAGS_AES_MODE_MASK ;
 int SSS_AES_BYTESWAP_CNT ;
 int SSS_AES_BYTESWAP_DI ;
 int SSS_AES_BYTESWAP_DO ;
 int SSS_AES_BYTESWAP_IV ;
 int SSS_AES_BYTESWAP_KEY ;
 int SSS_AES_CHAIN_MODE_CBC ;
 int SSS_AES_CHAIN_MODE_CTR ;
 int SSS_AES_FIFO_MODE ;
 int SSS_AES_KEY_CHANGE_MODE ;
 int SSS_AES_KEY_SIZE_192 ;
 int SSS_AES_KEY_SIZE_256 ;
 int SSS_AES_MODE_DECRYPT ;
 int SSS_AES_WRITE (struct s5p_aes_dev*,int ,int) ;
 int SSS_FCINTENCLR_BRDMAINTENCLR ;
 int SSS_FCINTENCLR_BTDMAINTENCLR ;
 int SSS_FCINTENSET_BRDMAINTENSET ;
 int SSS_FCINTENSET_BTDMAINTENSET ;
 int SSS_WRITE (struct s5p_aes_dev*,int ,int) ;
 int s5p_aes_complete (struct ablkcipher_request*,int) ;
 int s5p_set_aes (struct s5p_aes_dev*,int ,int *,int *,scalar_t__) ;
 int s5p_set_dma_indata (struct s5p_aes_dev*,int ) ;
 int s5p_set_dma_outdata (struct s5p_aes_dev*,int ) ;
 int s5p_set_indata_start (struct s5p_aes_dev*,struct ablkcipher_request*) ;
 int s5p_set_outdata_start (struct s5p_aes_dev*,struct ablkcipher_request*) ;
 int s5p_sg_done (struct s5p_aes_dev*) ;
 int s5p_unset_indata (struct s5p_aes_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void s5p_aes_crypt_start(struct s5p_aes_dev *dev, unsigned long mode)
{
 struct ablkcipher_request *req = dev->req;
 u32 aes_control;
 unsigned long flags;
 int err;
 u8 *iv, *ctr;


 aes_control = SSS_AES_KEY_CHANGE_MODE;
 if (mode & FLAGS_AES_DECRYPT)
  aes_control |= SSS_AES_MODE_DECRYPT;

 if ((mode & FLAGS_AES_MODE_MASK) == FLAGS_AES_CBC) {
  aes_control |= SSS_AES_CHAIN_MODE_CBC;
  iv = req->info;
  ctr = ((void*)0);
 } else if ((mode & FLAGS_AES_MODE_MASK) == FLAGS_AES_CTR) {
  aes_control |= SSS_AES_CHAIN_MODE_CTR;
  iv = ((void*)0);
  ctr = req->info;
 } else {
  iv = ((void*)0);
  ctr = ((void*)0);
 }

 if (dev->ctx->keylen == AES_KEYSIZE_192)
  aes_control |= SSS_AES_KEY_SIZE_192;
 else if (dev->ctx->keylen == AES_KEYSIZE_256)
  aes_control |= SSS_AES_KEY_SIZE_256;

 aes_control |= SSS_AES_FIFO_MODE;


 aes_control |= SSS_AES_BYTESWAP_DI
      | SSS_AES_BYTESWAP_DO
      | SSS_AES_BYTESWAP_IV
      | SSS_AES_BYTESWAP_KEY
      | SSS_AES_BYTESWAP_CNT;

 spin_lock_irqsave(&dev->lock, flags);

 SSS_WRITE(dev, FCINTENCLR,
    SSS_FCINTENCLR_BTDMAINTENCLR | SSS_FCINTENCLR_BRDMAINTENCLR);
 SSS_WRITE(dev, FCFIFOCTRL, 0x00);

 err = s5p_set_indata_start(dev, req);
 if (err)
  goto indata_error;

 err = s5p_set_outdata_start(dev, req);
 if (err)
  goto outdata_error;

 SSS_AES_WRITE(dev, AES_CONTROL, aes_control);
 s5p_set_aes(dev, dev->ctx->aes_key, iv, ctr, dev->ctx->keylen);

 s5p_set_dma_indata(dev, dev->sg_src);
 s5p_set_dma_outdata(dev, dev->sg_dst);

 SSS_WRITE(dev, FCINTENSET,
    SSS_FCINTENSET_BTDMAINTENSET | SSS_FCINTENSET_BRDMAINTENSET);

 spin_unlock_irqrestore(&dev->lock, flags);

 return;

outdata_error:
 s5p_unset_indata(dev);

indata_error:
 s5p_sg_done(dev);
 dev->busy = 0;
 spin_unlock_irqrestore(&dev->lock, flags);
 s5p_aes_complete(req, err);
}
