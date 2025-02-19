
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ix_sa_dir {int npe_ctx_idx; int npe_mode; int npe_ctx_phys; } ;
struct ixp_ctx {struct ix_sa_dir decrypt; struct ix_sa_dir encrypt; int configuring; } ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_5__ {struct aead_request* aead_req; } ;
struct crypt_ctl {int crypt_offs; int crypt_len; int ctl_flags; int src_buf; int dst_buf; scalar_t__ icv_rev_aes; scalar_t__ auth_len; int mode; int iv; scalar_t__ auth_offs; int init_len; int crypto_ctx; TYPE_2__ data; } ;
struct buffer_desc {unsigned int buf_len; scalar_t__ phys_addr; int phys_next; int * next; } ;
struct TYPE_4__ {int flags; } ;
struct aead_request {unsigned int cryptlen; int src; int dst; int iv; scalar_t__ assoclen; TYPE_1__ base; } ;
struct aead_ctx {int encrypt; int * src; int * dst; int * hmac_virt; } ;
typedef int gfp_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_6__ {struct device dev; } ;


 int BUG_ON (int) ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int CTL_FLAG_PERFORM_AEAD ;
 int CTL_FLAG_UNUSED ;
 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EAGAIN ;
 int EINPROGRESS ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int NPE_OP_NOT_IN_PLACE ;
 int SEND_QID ;
 struct aead_ctx* aead_request_ctx (struct aead_request*) ;
 scalar_t__ atomic_read (int *) ;
 int buffer_pool ;
 struct buffer_desc* chainup_buffers (struct device*,int ,scalar_t__,struct buffer_desc*,int ,int) ;
 int crypt_virt2phys (struct crypt_ctl*) ;
 unsigned int crypto_aead_authsize (struct crypto_aead*) ;
 struct ixp_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int * dma_pool_alloc (int ,int ,scalar_t__*) ;
 int free_buf_chain (struct device*,int *,int ) ;
 struct crypt_ctl* get_crypt_desc () ;
 int memcpy (int ,int ,unsigned int) ;
 TYPE_3__* pdev ;
 int qmgr_put_entry (int ,int ) ;
 scalar_t__ qmgr_stat_full (int ) ;
 int qmgr_stat_overflow (int ) ;
 int scatterwalk_map_and_copy (int *,int ,unsigned int,unsigned int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int aead_perform(struct aead_request *req, int encrypt,
  int cryptoffset, int eff_cryptlen, u8 *iv)
{
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct ixp_ctx *ctx = crypto_aead_ctx(tfm);
 unsigned ivsize = crypto_aead_ivsize(tfm);
 unsigned authsize = crypto_aead_authsize(tfm);
 struct ix_sa_dir *dir;
 struct crypt_ctl *crypt;
 unsigned int cryptlen;
 struct buffer_desc *buf, src_hook;
 struct aead_ctx *req_ctx = aead_request_ctx(req);
 struct device *dev = &pdev->dev;
 gfp_t flags = req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP ?
    GFP_KERNEL : GFP_ATOMIC;
 enum dma_data_direction src_direction = DMA_BIDIRECTIONAL;
 unsigned int lastlen;

 if (qmgr_stat_full(SEND_QID))
  return -EAGAIN;
 if (atomic_read(&ctx->configuring))
  return -EAGAIN;

 if (encrypt) {
  dir = &ctx->encrypt;
  cryptlen = req->cryptlen;
 } else {
  dir = &ctx->decrypt;

  cryptlen = req->cryptlen -authsize;
  eff_cryptlen -= authsize;
 }
 crypt = get_crypt_desc();
 if (!crypt)
  return -ENOMEM;

 crypt->data.aead_req = req;
 crypt->crypto_ctx = dir->npe_ctx_phys;
 crypt->mode = dir->npe_mode;
 crypt->init_len = dir->npe_ctx_idx;

 crypt->crypt_offs = cryptoffset;
 crypt->crypt_len = eff_cryptlen;

 crypt->auth_offs = 0;
 crypt->auth_len = req->assoclen + cryptlen;
 BUG_ON(ivsize && !req->iv);
 memcpy(crypt->iv, req->iv, ivsize);

 buf = chainup_buffers(dev, req->src, crypt->auth_len,
         &src_hook, flags, src_direction);
 req_ctx->src = src_hook.next;
 crypt->src_buf = src_hook.phys_next;
 if (!buf)
  goto free_buf_src;

 lastlen = buf->buf_len;
 if (lastlen >= authsize)
  crypt->icv_rev_aes = buf->phys_addr +
         buf->buf_len - authsize;

 req_ctx->dst = ((void*)0);

 if (req->src != req->dst) {
  struct buffer_desc dst_hook;

  crypt->mode |= NPE_OP_NOT_IN_PLACE;
  src_direction = DMA_TO_DEVICE;

  buf = chainup_buffers(dev, req->dst, crypt->auth_len,
          &dst_hook, flags, DMA_FROM_DEVICE);
  req_ctx->dst = dst_hook.next;
  crypt->dst_buf = dst_hook.phys_next;

  if (!buf)
   goto free_buf_dst;

  if (encrypt) {
   lastlen = buf->buf_len;
   if (lastlen >= authsize)
    crypt->icv_rev_aes = buf->phys_addr +
           buf->buf_len - authsize;
  }
 }

 if (unlikely(lastlen < authsize)) {


  req_ctx->hmac_virt = dma_pool_alloc(buffer_pool, flags,
    &crypt->icv_rev_aes);
  if (unlikely(!req_ctx->hmac_virt))
   goto free_buf_dst;
  if (!encrypt) {
   scatterwalk_map_and_copy(req_ctx->hmac_virt,
    req->src, cryptlen, authsize, 0);
  }
  req_ctx->encrypt = encrypt;
 } else {
  req_ctx->hmac_virt = ((void*)0);
 }

 crypt->ctl_flags |= CTL_FLAG_PERFORM_AEAD;
 qmgr_put_entry(SEND_QID, crypt_virt2phys(crypt));
 BUG_ON(qmgr_stat_overflow(SEND_QID));
 return -EINPROGRESS;

free_buf_dst:
 free_buf_chain(dev, req_ctx->dst, crypt->dst_buf);
free_buf_src:
 free_buf_chain(dev, req_ctx->src, crypt->src_buf);
 crypt->ctl_flags = CTL_FLAG_UNUSED;
 return -ENOMEM;
}
