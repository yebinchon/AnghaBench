
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {void* dst_data_len; void* src_data_len; void* iv_len; } ;
struct TYPE_14__ {TYPE_4__ para; } ;
struct TYPE_15__ {TYPE_5__ cipher; } ;
struct TYPE_16__ {TYPE_6__ u; void* op_type; } ;
struct TYPE_17__ {TYPE_7__ sym_req; } ;
struct TYPE_12__ {void* opcode; void* session_id; } ;
struct virtio_crypto_op_data_req {TYPE_8__ u; TYPE_3__ header; } ;
typedef struct virtio_crypto_op_data_req uint8_t ;
typedef unsigned int uint32_t ;
typedef int u64 ;
struct virtio_crypto_request {struct scatterlist** sgs; struct virtio_crypto_op_data_req status; struct virtio_crypto_op_data_req* req_data; } ;
struct virtio_crypto_sym_request {unsigned int type; struct virtio_crypto_op_data_req* iv; scalar_t__ encrypt; struct virtio_crypto_request base; struct virtio_crypto_ablkcipher_ctx* ablkcipher_ctx; } ;
struct TYPE_11__ {int session_id; } ;
struct TYPE_10__ {int session_id; } ;
struct virtio_crypto_ablkcipher_ctx {TYPE_2__ dec_sess_info; TYPE_1__ enc_sess_info; struct virtio_crypto* vcrypto; } ;
struct virtio_crypto {scalar_t__ max_size; TYPE_9__* vdev; } ;
struct scatterlist {int dummy; } ;
struct data_queue {int lock; int vq; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {unsigned int nbytes; struct scatterlist* dst; struct scatterlist* src; int info; } ;
struct TYPE_18__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int U32_MAX ;
 unsigned int VIRTIO_CRYPTO_CIPHER_DECRYPT ;
 unsigned int VIRTIO_CRYPTO_CIPHER_ENCRYPT ;
 unsigned int VIRTIO_CRYPTO_SYM_OP_CIPHER ;
 void* cpu_to_le32 (unsigned int) ;
 void* cpu_to_le64 (int ) ;
 unsigned int crypto_ablkcipher_ivsize (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int dev_to_node (int *) ;
 struct scatterlist** kcalloc_node (int,int,int ,int ) ;
 int kfree (struct scatterlist**) ;
 struct virtio_crypto_op_data_req* kzalloc_node (unsigned int,int ,int ) ;
 int kzfree (struct virtio_crypto_op_data_req*) ;
 int memcpy (struct virtio_crypto_op_data_req*,int ,unsigned int) ;
 int pr_debug (char*,int,int) ;
 int pr_err (char*) ;
 int sg_init_one (struct scatterlist*,struct virtio_crypto_op_data_req*,int) ;
 int sg_nents (struct scatterlist*) ;
 int sg_nents_for_len (struct scatterlist*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int virtio_crypto_alg_sg_nents_length (struct scatterlist*) ;
 int virtqueue_add_sgs (int ,struct scatterlist**,unsigned int,unsigned int,struct virtio_crypto_request*,int ) ;
 int virtqueue_kick (int ) ;

__attribute__((used)) static int
__virtio_crypto_ablkcipher_do_req(struct virtio_crypto_sym_request *vc_sym_req,
  struct ablkcipher_request *req,
  struct data_queue *data_vq)
{
 struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
 struct virtio_crypto_ablkcipher_ctx *ctx = vc_sym_req->ablkcipher_ctx;
 struct virtio_crypto_request *vc_req = &vc_sym_req->base;
 unsigned int ivsize = crypto_ablkcipher_ivsize(tfm);
 struct virtio_crypto *vcrypto = ctx->vcrypto;
 struct virtio_crypto_op_data_req *req_data;
 int src_nents, dst_nents;
 int err;
 unsigned long flags;
 struct scatterlist outhdr, iv_sg, status_sg, **sgs;
 int i;
 u64 dst_len;
 unsigned int num_out = 0, num_in = 0;
 int sg_total;
 uint8_t *iv;

 src_nents = sg_nents_for_len(req->src, req->nbytes);
 dst_nents = sg_nents(req->dst);

 pr_debug("virtio_crypto: Number of sgs (src_nents: %d, dst_nents: %d)\n",
   src_nents, dst_nents);


 sg_total = src_nents + dst_nents + 3;
 sgs = kcalloc_node(sg_total, sizeof(*sgs), GFP_KERNEL,
    dev_to_node(&vcrypto->vdev->dev));
 if (!sgs)
  return -ENOMEM;

 req_data = kzalloc_node(sizeof(*req_data), GFP_KERNEL,
    dev_to_node(&vcrypto->vdev->dev));
 if (!req_data) {
  kfree(sgs);
  return -ENOMEM;
 }

 vc_req->req_data = req_data;
 vc_sym_req->type = VIRTIO_CRYPTO_SYM_OP_CIPHER;

 if (vc_sym_req->encrypt) {
  req_data->header.session_id =
   cpu_to_le64(ctx->enc_sess_info.session_id);
  req_data->header.opcode =
   cpu_to_le32(VIRTIO_CRYPTO_CIPHER_ENCRYPT);
 } else {
  req_data->header.session_id =
   cpu_to_le64(ctx->dec_sess_info.session_id);
  req_data->header.opcode =
   cpu_to_le32(VIRTIO_CRYPTO_CIPHER_DECRYPT);
 }
 req_data->u.sym_req.op_type = cpu_to_le32(VIRTIO_CRYPTO_SYM_OP_CIPHER);
 req_data->u.sym_req.u.cipher.para.iv_len = cpu_to_le32(ivsize);
 req_data->u.sym_req.u.cipher.para.src_data_len =
   cpu_to_le32(req->nbytes);

 dst_len = virtio_crypto_alg_sg_nents_length(req->dst);
 if (unlikely(dst_len > U32_MAX)) {
  pr_err("virtio_crypto: The dst_len is beyond U32_MAX\n");
  err = -EINVAL;
  goto free;
 }

 pr_debug("virtio_crypto: src_len: %u, dst_len: %llu\n",
   req->nbytes, dst_len);

 if (unlikely(req->nbytes + dst_len + ivsize +
  sizeof(vc_req->status) > vcrypto->max_size)) {
  pr_err("virtio_crypto: The length is too big\n");
  err = -EINVAL;
  goto free;
 }

 req_data->u.sym_req.u.cipher.para.dst_data_len =
   cpu_to_le32((uint32_t)dst_len);


 sg_init_one(&outhdr, req_data, sizeof(*req_data));
 sgs[num_out++] = &outhdr;







 iv = kzalloc_node(ivsize, GFP_ATOMIC,
    dev_to_node(&vcrypto->vdev->dev));
 if (!iv) {
  err = -ENOMEM;
  goto free;
 }
 memcpy(iv, req->info, ivsize);
 sg_init_one(&iv_sg, iv, ivsize);
 sgs[num_out++] = &iv_sg;
 vc_sym_req->iv = iv;


 for (i = 0; i < src_nents; i++)
  sgs[num_out++] = &req->src[i];


 for (i = 0; i < dst_nents; i++)
  sgs[num_out + num_in++] = &req->dst[i];


 sg_init_one(&status_sg, &vc_req->status, sizeof(vc_req->status));
 sgs[num_out + num_in++] = &status_sg;

 vc_req->sgs = sgs;

 spin_lock_irqsave(&data_vq->lock, flags);
 err = virtqueue_add_sgs(data_vq->vq, sgs, num_out,
    num_in, vc_req, GFP_ATOMIC);
 virtqueue_kick(data_vq->vq);
 spin_unlock_irqrestore(&data_vq->lock, flags);
 if (unlikely(err < 0))
  goto free_iv;

 return 0;

free_iv:
 kzfree(iv);
free:
 kzfree(req_data);
 kfree(sgs);
 return err;
}
