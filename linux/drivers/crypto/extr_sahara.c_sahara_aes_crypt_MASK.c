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
struct sahara_dev {int /*<<< orphan*/  kthread; int /*<<< orphan*/  queue_mutex; int /*<<< orphan*/  queue; int /*<<< orphan*/  device; } ;
struct sahara_aes_reqctx {unsigned long mode; } ;
struct ablkcipher_request {int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int EINVAL ; 
 unsigned long FLAGS_CBC ; 
 unsigned long FLAGS_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ablkcipher_request*) ; 
 struct sahara_aes_reqctx* FUNC2 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct sahara_dev* dev_ptr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ablkcipher_request *req, unsigned long mode)
{
	struct sahara_aes_reqctx *rctx = FUNC2(req);
	struct sahara_dev *dev = dev_ptr;
	int err = 0;

	FUNC3(dev->device, "nbytes: %d, enc: %d, cbc: %d\n",
		req->nbytes, !!(mode & FLAGS_ENCRYPT), !!(mode & FLAGS_CBC));

	if (!FUNC0(req->nbytes, AES_BLOCK_SIZE)) {
		FUNC4(dev->device,
			"request size is not exact amount of AES blocks\n");
		return -EINVAL;
	}

	rctx->mode = mode;

	FUNC5(&dev->queue_mutex);
	err = FUNC1(&dev->queue, req);
	FUNC6(&dev->queue_mutex);

	FUNC7(dev->kthread);

	return err;
}