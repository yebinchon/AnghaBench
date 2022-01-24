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
struct s5p_aes_reqctx {int mode; } ;
struct s5p_aes_dev {scalar_t__ aes_ioaddr; scalar_t__ sg_dst_cpy; scalar_t__ sg_src_cpy; struct ablkcipher_request* req; int /*<<< orphan*/  dev; } ;
struct ablkcipher_request {int /*<<< orphan*/  info; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int FLAGS_AES_CBC ; 
 int FLAGS_AES_CTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct s5p_aes_reqctx* FUNC2 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct s5p_aes_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct s5p_aes_dev *dev)
{
	struct ablkcipher_request *req = dev->req;
	struct s5p_aes_reqctx *reqctx = FUNC2(req);

	if (dev->sg_dst_cpy) {
		FUNC3(dev->dev,
			"Copying %d bytes of output data back to original place\n",
			dev->req->nbytes);
		FUNC6(FUNC7(dev->sg_dst_cpy), dev->req->dst,
				dev->req->nbytes, 1);
	}
	FUNC5(dev, &dev->sg_src_cpy);
	FUNC5(dev, &dev->sg_dst_cpy);
	if (reqctx->mode & FLAGS_AES_CBC)
		FUNC4(req->info, dev->aes_ioaddr + FUNC1(0), AES_BLOCK_SIZE);

	else if (reqctx->mode & FLAGS_AES_CTR)
		FUNC4(req->info, dev->aes_ioaddr + FUNC0(0), AES_BLOCK_SIZE);
}