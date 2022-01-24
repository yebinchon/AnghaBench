#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct fw_packet {unsigned long long* header; int /*<<< orphan*/  ack; int /*<<< orphan*/  (* callback ) (struct fw_packet*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct context {TYPE_1__* ohci; } ;
struct TYPE_3__ {int /*<<< orphan*/  card; struct context at_response_ctx; struct context at_request_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_COMPLETE ; 
 int /*<<< orphan*/  ACK_PENDING ; 
#define  CSR_BANDWIDTH_AVAILABLE 131 
#define  CSR_BUS_MANAGER_ID 130 
#define  CSR_CHANNELS_AVAILABLE_HI 129 
#define  CSR_CHANNELS_AVAILABLE_LO 128 
 int CSR_CONFIG_ROM ; 
 int CSR_CONFIG_ROM_END ; 
 int CSR_REGISTER_BASE ; 
 scalar_t__ FUNC0 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fw_packet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct fw_packet*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct fw_packet*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct fw_packet*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_packet*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_packet*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct context *ctx, struct fw_packet *packet)
{
	u64 offset, csr;

	if (ctx == &ctx->ohci->at_request_ctx) {
		packet->ack = ACK_PENDING;
		packet->callback(packet, &ctx->ohci->card, packet->ack);
	}

	offset =
		((unsigned long long)
		 FUNC0(packet->header[1]) << 32) |
		packet->header[2];
	csr = offset - CSR_REGISTER_BASE;

	/* Handle config rom reads. */
	if (csr >= CSR_CONFIG_ROM && csr < CSR_CONFIG_ROM_END)
		FUNC4(ctx->ohci, packet, csr);
	else switch (csr) {
	case CSR_BUS_MANAGER_ID:
	case CSR_BANDWIDTH_AVAILABLE:
	case CSR_CHANNELS_AVAILABLE_HI:
	case CSR_CHANNELS_AVAILABLE_LO:
		FUNC3(ctx->ohci, packet, csr);
		break;
	default:
		if (ctx == &ctx->ohci->at_request_ctx)
			FUNC1(&ctx->ohci->card, packet);
		else
			FUNC2(&ctx->ohci->card, packet);
		break;
	}

	if (ctx == &ctx->ohci->at_response_ctx) {
		packet->ack = ACK_COMPLETE;
		packet->callback(packet, &ctx->ohci->card, packet->ack);
	}
}