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
typedef  size_t u32 ;
struct nvkm_grctx {size_t* ucode; int ctxprog_max; size_t ctxprog_len; int ctxvals_pos; int /*<<< orphan*/  mode; struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVKM_GRCTX_PROG ; 
 int /*<<< orphan*/  FUNC0 (size_t*) ; 
 size_t* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_grctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int,size_t) ; 

int
FUNC4(struct nvkm_device *device, u32 *size)
{
	u32 *ctxprog = FUNC1(256 * 4, GFP_KERNEL), i;
	struct nvkm_grctx ctx = {
		.device = device,
		.mode = NVKM_GRCTX_PROG,
		.ucode = ctxprog,
		.ctxprog_max = 256,
	};

	if (!ctxprog)
		return -ENOMEM;

	FUNC2(&ctx);

	FUNC3(device, 0x400324, 0);
	for (i = 0; i < ctx.ctxprog_len; i++)
		FUNC3(device, 0x400328, ctxprog[i]);
	*size = ctx.ctxvals_pos * 4;

	FUNC0(ctxprog);
	return 0;
}