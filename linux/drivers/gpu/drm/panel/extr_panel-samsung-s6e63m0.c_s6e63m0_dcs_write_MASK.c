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
typedef  int u8 ;
struct s6e63m0 {int error; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int const DATA_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int const*) ; 
 int FUNC2 (struct s6e63m0*,int const) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct s6e63m0 *ctx, const u8 *data, size_t len)
{
	int ret = 0;

	if (ctx->error < 0 || len == 0)
		return;

	FUNC0(ctx->dev, "writing dcs seq: %*ph\n", (int)len, data);
	ret = FUNC2(ctx, *data);

	while (!ret && --len) {
		++data;
		ret = FUNC2(ctx, *data | DATA_MASK);
	}

	if (ret) {
		FUNC1(ctx->dev, "error %d writing dcs seq: %*ph\n", ret,
			      (int)len, data);
		ctx->error = ret;
	}

	FUNC3(300, 310);
}