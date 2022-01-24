#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct virtio_crypto_request {int /*<<< orphan*/  alg_cb; struct data_queue* dataq; } ;
struct virtio_crypto_sym_request {int encrypt; struct ablkcipher_request* ablkcipher_req; struct virtio_crypto_ablkcipher_ctx* ablkcipher_ctx; struct virtio_crypto_request base; } ;
struct virtio_crypto_ablkcipher_ctx {struct virtio_crypto* vcrypto; } ;
struct virtio_crypto {struct data_queue* data_vq; } ;
struct data_queue {int /*<<< orphan*/  engine; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 struct virtio_crypto_sym_request* FUNC0 (struct ablkcipher_request*) ; 
 struct virtio_crypto_ablkcipher_ctx* FUNC1 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC2 (struct ablkcipher_request*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ablkcipher_request*) ; 
 int /*<<< orphan*/  virtio_crypto_dataq_sym_callback ; 

__attribute__((used)) static int FUNC4(struct ablkcipher_request *req)
{
	struct crypto_ablkcipher *atfm = FUNC2(req);
	struct virtio_crypto_ablkcipher_ctx *ctx = FUNC1(atfm);
	struct virtio_crypto_sym_request *vc_sym_req =
				FUNC0(req);
	struct virtio_crypto_request *vc_req = &vc_sym_req->base;
	struct virtio_crypto *vcrypto = ctx->vcrypto;
	/* Use the first data virtqueue as default */
	struct data_queue *data_vq = &vcrypto->data_vq[0];

	vc_req->dataq = data_vq;
	vc_req->alg_cb = virtio_crypto_dataq_sym_callback;
	vc_sym_req->ablkcipher_ctx = ctx;
	vc_sym_req->ablkcipher_req = req;
	vc_sym_req->encrypt = true;

	return FUNC3(data_vq->engine, req);
}