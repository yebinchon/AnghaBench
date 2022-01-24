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
struct fw_packet {scalar_t__ generation; int /*<<< orphan*/  ack; int /*<<< orphan*/  (* callback ) (struct fw_packet*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * header; } ;
struct context {TYPE_1__* ohci; } ;
struct TYPE_2__ {scalar_t__ node_id; scalar_t__ generation; int /*<<< orphan*/  card; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct context*,struct fw_packet*) ; 
 int /*<<< orphan*/  FUNC2 (struct context*,struct fw_packet*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_packet*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct context *ctx, struct fw_packet *packet)
{
	unsigned long flags;
	int ret;

	FUNC3(&ctx->ohci->lock, flags);

	if (FUNC0(packet->header[0]) == ctx->ohci->node_id &&
	    ctx->ohci->generation == packet->generation) {
		FUNC4(&ctx->ohci->lock, flags);
		FUNC2(ctx, packet);
		return;
	}

	ret = FUNC1(ctx, packet);
	FUNC4(&ctx->ohci->lock, flags);

	if (ret < 0)
		packet->callback(packet, &ctx->ohci->card, packet->ack);

}