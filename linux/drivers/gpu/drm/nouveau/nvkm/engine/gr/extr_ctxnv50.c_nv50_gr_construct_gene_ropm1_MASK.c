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
struct nvkm_grctx {struct nvkm_device* device; } ;
struct nvkm_device {int /*<<< orphan*/  chipset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_grctx*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct nvkm_grctx *ctx)
{
	struct nvkm_device *device = ctx->device;
	FUNC1(ctx, 1, 0x4e3bfdf);	/* ffffffff UNK0D64 */
	FUNC1(ctx, 1, 0x4e3bfdf);	/* ffffffff UNK0DF4 */
	FUNC1(ctx, 1, 0);		/* 00000007 */
	FUNC1(ctx, 1, 0);		/* 000003ff */
	if (FUNC0(device->chipset))
		FUNC1(ctx, 1, 0x11);	/* 000000ff tesla UNK1968 */
	FUNC1(ctx, 1, 0);		/* ffffffff tesla UNK1A3C */
}