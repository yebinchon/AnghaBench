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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct atmel_sha_reqctx {size_t* digcnt; } ;
struct atmel_sha_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int FUNC0 (size_t,int) ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  SHA_FLAGS_CPU ; 
 int /*<<< orphan*/  SHA_FLAGS_FINAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct atmel_sha_reqctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_sha_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_sha_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t,size_t,size_t,int) ; 

__attribute__((used)) static int FUNC6(struct atmel_sha_dev *dd, const u8 *buf,
			      size_t length, int final)
{
	struct atmel_sha_reqctx *ctx = FUNC2(dd->req);
	int count, len32;
	const u32 *buffer = (const u32 *)buf;

	FUNC5(dd->dev, "xmit_cpu: digcnt: 0x%llx 0x%llx, length: %zd, final: %d\n",
		ctx->digcnt[1], ctx->digcnt[0], length, final);

	FUNC4(dd, 0);

	/* should be non-zero before next lines to disable clocks later */
	ctx->digcnt[0] += length;
	if (ctx->digcnt[0] < length)
		ctx->digcnt[1]++;

	if (final)
		dd->flags |= SHA_FLAGS_FINAL; /* catch last interrupt */

	len32 = FUNC0(length, sizeof(u32));

	dd->flags |= SHA_FLAGS_CPU;

	for (count = 0; count < len32; count++)
		FUNC3(dd, FUNC1(count), buffer[count]);

	return -EINPROGRESS;
}