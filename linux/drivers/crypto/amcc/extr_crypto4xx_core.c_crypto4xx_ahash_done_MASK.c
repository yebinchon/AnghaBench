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
struct pd_uinfo {int state; int /*<<< orphan*/  async_req; } ;
struct crypto4xx_device {int dummy; } ;
struct crypto4xx_ctx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;
struct ahash_request {TYPE_1__ base; int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int PD_ENTRY_BUSY ; 
 struct ahash_request* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pd_uinfo*,struct crypto4xx_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto4xx_device*,struct pd_uinfo*) ; 
 struct crypto4xx_ctx* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct crypto4xx_device *dev,
				struct pd_uinfo *pd_uinfo)
{
	struct crypto4xx_ctx *ctx;
	struct ahash_request *ahash_req;

	ahash_req = FUNC0(pd_uinfo->async_req);
	ctx  = FUNC4(ahash_req->base.tfm);

	FUNC2(ahash_req->result, pd_uinfo,
				     FUNC4(ahash_req->base.tfm));
	FUNC3(dev, pd_uinfo);

	if (pd_uinfo->state & PD_ENTRY_BUSY)
		FUNC1(ahash_req, -EINPROGRESS);
	FUNC1(ahash_req, 0);
}