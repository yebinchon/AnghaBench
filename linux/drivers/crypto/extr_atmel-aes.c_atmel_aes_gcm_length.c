
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_aes_gcm_ctx {scalar_t__ textlen; int * j0; } ;
struct atmel_aes_dev {scalar_t__ datalen; scalar_t__ buflen; scalar_t__ buf; int * data; int areq; int ctx; } ;
struct aead_request {scalar_t__ assoclen; int src; } ;


 int AES_AADLENR ;
 int AES_BLOCK_SIZE ;
 int AES_CLENR ;
 int AES_IVR (int ) ;
 int EINVAL ;
 struct aead_request* aead_request_cast (int ) ;
 int atmel_aes_complete (struct atmel_aes_dev*,int ) ;
 struct atmel_aes_gcm_ctx* atmel_aes_gcm_ctx_cast (int ) ;
 int atmel_aes_gcm_data (struct atmel_aes_dev*) ;
 size_t atmel_aes_padlen (scalar_t__,int ) ;
 int atmel_aes_write (struct atmel_aes_dev*,int ,scalar_t__) ;
 int atmel_aes_write_block (struct atmel_aes_dev*,int ,int *) ;
 scalar_t__ be32_to_cpu (int ) ;
 int cpu_to_be32 (scalar_t__) ;
 int sg_copy_to_buffer (int ,int ,scalar_t__,scalar_t__) ;
 int sg_nents (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int atmel_aes_gcm_length(struct atmel_aes_dev *dd)
{
 struct atmel_aes_gcm_ctx *ctx = atmel_aes_gcm_ctx_cast(dd->ctx);
 struct aead_request *req = aead_request_cast(dd->areq);
 u32 j0_lsw, *j0 = ctx->j0;
 size_t padlen;


 j0_lsw = j0[3];
 j0[3] = cpu_to_be32(be32_to_cpu(j0[3]) + 1);
 atmel_aes_write_block(dd, AES_IVR(0), j0);
 j0[3] = j0_lsw;


 atmel_aes_write(dd, AES_AADLENR, req->assoclen);
 atmel_aes_write(dd, AES_CLENR, ctx->textlen);


 if (unlikely(req->assoclen == 0)) {
  dd->datalen = 0;
  return atmel_aes_gcm_data(dd);
 }


 padlen = atmel_aes_padlen(req->assoclen, AES_BLOCK_SIZE);
 if (unlikely(req->assoclen + padlen > dd->buflen))
  return atmel_aes_complete(dd, -EINVAL);
 sg_copy_to_buffer(req->src, sg_nents(req->src), dd->buf, req->assoclen);


 dd->data = (u32 *)dd->buf;
 dd->datalen = req->assoclen + padlen;
 return atmel_aes_gcm_data(dd);
}
