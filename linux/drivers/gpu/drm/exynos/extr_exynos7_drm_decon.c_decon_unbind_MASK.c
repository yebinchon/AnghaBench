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
struct device {int dummy; } ;
struct decon_context {scalar_t__ encoder; int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct decon_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct decon_context* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct device *dev, struct device *master,
			void *data)
{
	struct decon_context *ctx = FUNC2(dev);

	FUNC1(ctx->crtc);

	if (ctx->encoder)
		FUNC3(ctx->encoder);

	FUNC0(ctx);
}