#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hifn_device {scalar_t__ started; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct hifn_context {struct hifn_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;
struct ablkcipher_request {int /*<<< orphan*/  nbytes; TYPE_1__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 scalar_t__ HIFN_QUEUE_LENGTH ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ablkcipher_request*) ; 
 struct hifn_context* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct ablkcipher_request *req)
{
	struct hifn_context *ctx = FUNC2(req->base.tfm);
	struct hifn_device *dev = ctx->dev;
	int err = -EAGAIN;

	if (dev->started + FUNC0(req->nbytes, PAGE_SIZE) <= HIFN_QUEUE_LENGTH)
		err = FUNC3(req);

	if (err == -EAGAIN) {
		unsigned long flags;

		FUNC4(&dev->lock, flags);
		err = FUNC1(&dev->queue, req);
		FUNC5(&dev->lock, flags);
	}

	return err;
}