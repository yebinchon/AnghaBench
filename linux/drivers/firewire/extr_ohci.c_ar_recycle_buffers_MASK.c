#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ar_context {TYPE_2__* ohci; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {TYPE_1__ card; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ar_context*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct ar_context*,unsigned int) ; 
 unsigned int FUNC2 (struct ar_context*) ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ar_context *ctx, unsigned int end_buffer)
{
	unsigned int i;

	i = FUNC2(ctx);
	while (i != end_buffer) {
		FUNC4(ctx->ohci->card.device,
					   FUNC0(ctx, i),
					   PAGE_SIZE, DMA_FROM_DEVICE);
		FUNC1(ctx, i);
		i = FUNC3(i);
	}
}