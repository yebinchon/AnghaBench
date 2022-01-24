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
typedef  int /*<<< orphan*/  u32 ;
struct cryp_device_data {TYPE_1__* base; } ;
struct cryp_ctx {int blocksize; int datalen; scalar_t__ outdata; scalar_t__ indata; } ;
struct TYPE_2__ {int /*<<< orphan*/  dout; int /*<<< orphan*/  din; } ;

/* Variables and functions */
 int BYTES_PER_WORD ; 
 int /*<<< orphan*/  FUNC0 (struct cryp_device_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct cryp_ctx *ctx,
			      struct cryp_device_data *device_data)
{
	int len = ctx->blocksize / BYTES_PER_WORD;
	int remaining_length = ctx->datalen;
	u32 *indata = (u32 *)ctx->indata;
	u32 *outdata = (u32 *)ctx->outdata;

	while (remaining_length > 0) {
		FUNC2(&device_data->base->din, indata, len);
		indata += len;
		remaining_length -= (len * BYTES_PER_WORD);
		FUNC0(device_data);

		FUNC1(&device_data->base->dout, outdata, len);
		outdata += len;
		FUNC0(device_data);
	}
}