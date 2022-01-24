#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {void* dst_data_len; void* src_data_len; void* iv_len; } ;
struct TYPE_14__ {TYPE_4__ para; } ;
struct TYPE_15__ {TYPE_5__ cipher; } ;
struct TYPE_16__ {TYPE_6__ u; void* op_type; } ;
struct TYPE_17__ {TYPE_7__ sym_req; } ;
struct TYPE_12__ {void* opcode; void* session_id; } ;
struct virtio_crypto_op_data_req {TYPE_8__ u; TYPE_3__ header; } ;
typedef  struct virtio_crypto_op_data_req uint8_t ;
typedef  unsigned int uint32_t ;
typedef  int u64 ;
struct virtio_crypto_request {struct scatterlist** sgs; struct virtio_crypto_op_data_req status; struct virtio_crypto_op_data_req* req_data; } ;
struct virtio_crypto_sym_request {unsigned int type; struct virtio_crypto_op_data_req* iv; scalar_t__ encrypt; struct virtio_crypto_request base; struct virtio_crypto_ablkcipher_ctx* ablkcipher_ctx; } ;
struct TYPE_11__ {int /*<<< orphan*/  session_id; } ;
struct TYPE_10__ {int /*<<< orphan*/  session_id; } ;
struct virtio_crypto_ablkcipher_ctx {TYPE_2__ dec_sess_info; TYPE_1__ enc_sess_info; struct virtio_crypto* vcrypto; } ;
struct virtio_crypto {scalar_t__ max_size; TYPE_9__* vdev; } ;
struct scatterlist {int dummy; } ;
struct data_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  vq; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {unsigned int nbytes; struct scatterlist* dst; struct scatterlist* src; int /*<<< orphan*/  info; } ;
struct TYPE_18__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int U32_MAX ; 
 unsigned int VIRTIO_CRYPTO_CIPHER_DECRYPT ; 
 unsigned int VIRTIO_CRYPTO_CIPHER_ENCRYPT ; 
 unsigned int VIRTIO_CRYPTO_SYM_OP_CIPHER ; 
 void* FUNC0 (unsigned int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC3 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct scatterlist** FUNC5 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist**) ; 
 struct virtio_crypto_op_data_req* FUNC7 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct virtio_crypto_op_data_req*) ; 
 int /*<<< orphan*/  FUNC9 (struct virtio_crypto_op_data_req*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct scatterlist*,struct virtio_crypto_op_data_req*,int) ; 
 int FUNC13 (struct scatterlist*) ; 
 int FUNC14 (struct scatterlist*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC17 (int) ; 
 int FUNC18 (struct scatterlist*) ; 
 int FUNC19 (int /*<<< orphan*/ ,struct scatterlist**,unsigned int,unsigned int,struct virtio_crypto_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(struct virtio_crypto_sym_request *vc_sym_req,
		struct ablkcipher_request *req,
		struct data_queue *data_vq)
{
	struct crypto_ablkcipher *tfm = FUNC3(req);
	struct virtio_crypto_ablkcipher_ctx *ctx = vc_sym_req->ablkcipher_ctx;
	struct virtio_crypto_request *vc_req = &vc_sym_req->base;
	unsigned int ivsize = FUNC2(tfm);
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

	src_nents = FUNC14(req->src, req->nbytes);
	dst_nents = FUNC13(req->dst);

	FUNC10("virtio_crypto: Number of sgs (src_nents: %d, dst_nents: %d)\n",
			src_nents, dst_nents);

	/* Why 3?  outhdr + iv + inhdr */
	sg_total = src_nents + dst_nents + 3;
	sgs = FUNC5(sg_total, sizeof(*sgs), GFP_KERNEL,
				FUNC4(&vcrypto->vdev->dev));
	if (!sgs)
		return -ENOMEM;

	req_data = FUNC7(sizeof(*req_data), GFP_KERNEL,
				FUNC4(&vcrypto->vdev->dev));
	if (!req_data) {
		FUNC6(sgs);
		return -ENOMEM;
	}

	vc_req->req_data = req_data;
	vc_sym_req->type = VIRTIO_CRYPTO_SYM_OP_CIPHER;
	/* Head of operation */
	if (vc_sym_req->encrypt) {
		req_data->header.session_id =
			FUNC1(ctx->enc_sess_info.session_id);
		req_data->header.opcode =
			FUNC0(VIRTIO_CRYPTO_CIPHER_ENCRYPT);
	} else {
		req_data->header.session_id =
			FUNC1(ctx->dec_sess_info.session_id);
		req_data->header.opcode =
			FUNC0(VIRTIO_CRYPTO_CIPHER_DECRYPT);
	}
	req_data->u.sym_req.op_type = FUNC0(VIRTIO_CRYPTO_SYM_OP_CIPHER);
	req_data->u.sym_req.u.cipher.para.iv_len = FUNC0(ivsize);
	req_data->u.sym_req.u.cipher.para.src_data_len =
			FUNC0(req->nbytes);

	dst_len = FUNC18(req->dst);
	if (FUNC17(dst_len > U32_MAX)) {
		FUNC11("virtio_crypto: The dst_len is beyond U32_MAX\n");
		err = -EINVAL;
		goto free;
	}

	FUNC10("virtio_crypto: src_len: %u, dst_len: %llu\n",
			req->nbytes, dst_len);

	if (FUNC17(req->nbytes + dst_len + ivsize +
		sizeof(vc_req->status) > vcrypto->max_size)) {
		FUNC11("virtio_crypto: The length is too big\n");
		err = -EINVAL;
		goto free;
	}

	req_data->u.sym_req.u.cipher.para.dst_data_len =
			FUNC0((uint32_t)dst_len);

	/* Outhdr */
	FUNC12(&outhdr, req_data, sizeof(*req_data));
	sgs[num_out++] = &outhdr;

	/* IV */

	/*
	 * Avoid to do DMA from the stack, switch to using
	 * dynamically-allocated for the IV
	 */
	iv = FUNC7(ivsize, GFP_ATOMIC,
				FUNC4(&vcrypto->vdev->dev));
	if (!iv) {
		err = -ENOMEM;
		goto free;
	}
	FUNC9(iv, req->info, ivsize);
	FUNC12(&iv_sg, iv, ivsize);
	sgs[num_out++] = &iv_sg;
	vc_sym_req->iv = iv;

	/* Source data */
	for (i = 0; i < src_nents; i++)
		sgs[num_out++] = &req->src[i];

	/* Destination data */
	for (i = 0; i < dst_nents; i++)
		sgs[num_out + num_in++] = &req->dst[i];

	/* Status */
	FUNC12(&status_sg, &vc_req->status, sizeof(vc_req->status));
	sgs[num_out + num_in++] = &status_sg;

	vc_req->sgs = sgs;

	FUNC15(&data_vq->lock, flags);
	err = FUNC19(data_vq->vq, sgs, num_out,
				num_in, vc_req, GFP_ATOMIC);
	FUNC20(data_vq->vq);
	FUNC16(&data_vq->lock, flags);
	if (FUNC17(err < 0))
		goto free_iv;

	return 0;

free_iv:
	FUNC8(iv);
free:
	FUNC8(req_data);
	FUNC6(sgs);
	return err;
}